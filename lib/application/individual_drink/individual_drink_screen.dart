import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portable_bartender_v2/application/individual_drink/individual_drink_screen_view_model.dart';
import 'package:portable_bartender_v2/application/individual_drink/models/individual_drink_screen_state.dart';
import 'package:portable_bartender_v2/application/widgets/individual_checkbox_list_tile.dart';
import 'package:portable_bartender_v2/core/hooks.dart';

import '../../core/theme/hooks.dart';

class IndividualDrinkScreen extends HookConsumerWidget {
  const IndividualDrinkScreen({Key? key}) : super(key: key);

  void showSnackBar(BuildContext context, ThemeData theme) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: theme.errorColor,
        behavior: SnackBarBehavior.floating,
        content: const Text('Oops something went wrong'),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewState = ref.watch(individualDrinkScreenViewModelProvider);
    final viewModel =
        ref.watch(individualDrinkScreenViewModelProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance
          ?.addPostFrameCallback((_) async => viewModel.initialize());
      return;
    }, []);

    final ingredientCount = viewState.drink?.ingredients?.length;
    final thumbnailUrl = viewState.drink?.thumbnailUrl;
    final theme = useTheme();

    final instructions = viewState.drink?.instructions?.split('.');

    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text(viewState.drink?.name ?? ''),
              background: CachedNetworkImage(
                imageUrl: thumbnailUrl ?? '',
                colorBlendMode: BlendMode.darken,
                color: Colors.black26,
                fit: BoxFit.cover,
                placeholder: (_, __) => const Placeholder(),
                errorWidget: (_, __, ___) => const Placeholder(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _BuildIngredientList(
              viewState: viewState,
              ingredientCount: ingredientCount,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          SliverToBoxAdapter(
            child: _BuildInstructions(instructions: instructions),
          ),
          SliverToBoxAdapter(
            child: _BuildInstructions(instructions: instructions),
          ),
          SliverToBoxAdapter(
            child: _BuildInstructions(instructions: instructions),
          ),
        ],
      ),

      // SingleChildScrollView(
      //   physics: const ClampingScrollPhysics(),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       _BuildImageContainer(
      //         thumbnailUrl: thumbnailUrl,
      //         viewState: viewState,
      //       ),
      //       const SizedBox(height: 16),
      //       _BuildIngredientList(
      //         viewState: viewState,
      //         ingredientCount: ingredientCount,
      //       ),
      //       const SizedBox(height: 16),
      //       _BuildInstructions(instructions: instructions),
      //       ElevatedButton(
      //         onPressed: () => showSnackBar(context, theme),
      //         child: const Text('Show Error'),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

class _BuildImageContainer extends HookWidget {
  const _BuildImageContainer({
    Key? key,
    required this.thumbnailUrl,
    required this.viewState,
  }) : super(key: key);

  final String? thumbnailUrl;

  final IndividualDrinkScreenState viewState;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final screenSize = useScreenSize();
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: thumbnailUrl ?? '',
          colorBlendMode: BlendMode.darken,
          color: Colors.black26,
          placeholder: (_, __) => const Placeholder(),
          errorWidget: (_, __, ___) => const Placeholder(),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: screenSize.width,
            height: 104,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  theme.backgroundColor,
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 12,
          child: Text(
            viewState.drink?.name ?? '',
            style: theme.textTheme.headline3
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class _BuildIngredientList extends HookWidget {
  const _BuildIngredientList({
    Key? key,
    required this.viewState,
    required this.ingredientCount,
  }) : super(key: key);

  final IndividualDrinkScreenState viewState;
  final int? ingredientCount;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpansionTile(
            title: Text(
              'Ingredients',
              style: theme.textTheme.headline6,
            ),
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(height: 0),
                  itemBuilder: (_, index) {
                    final ingredientName = viewState.drink?.ingredients?[index];
                    final ingredientMeasurement =
                        viewState.drink?.measurements?[index];
                    return ListTile(
                      leading: CachedNetworkImage(
                        width: 40,
                        height: 40,
                        imageUrl: 'https://www.thecocktaildb.com/images/'
                            'ingredients/$ingredientName-Small.png',
                        errorWidget: (_, err, stck) {
                          return const SizedBox();
                        },
                      ),
                      title: Text(ingredientName ?? ''),
                      trailing: Text(ingredientMeasurement ?? ''),
                    );
                  },
                  itemCount: ingredientCount ?? 0)
            ],
          ),
        ],
      ),
    );
  }
}

class _BuildInstructions extends HookWidget {
  const _BuildInstructions({
    Key? key,
    required this.instructions,
  }) : super(key: key);

  final List<String>? instructions;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return ExpansionTile(
      title: Text(
        'How to mix',
        style: theme.textTheme.headline6,
      ),
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: (instructions?.length ?? 1) - 1,
          itemBuilder: (_, index) =>
              IndividualCheckBoxListTile(title: instructions?[index] ?? ''),
        )
      ],
    );
  }
}
