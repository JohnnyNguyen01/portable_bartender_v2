import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portable_bartender_v2/application/individual_drink/individual_drink_screen.dart';
import 'package:portable_bartender_v2/core/theme/theme.dart';
import 'package:portable_bartender_v2/core/theme/theme_mode_state.dart';
import 'package:portable_bartender_v2/domain/models/drink_model.dart';

import 'domain/interactors/drink_interactor/drink_interactor.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(final context, final ref) {
    final themeModeNotifier = ref.watch(themeModeProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: darkTheme,
      theme: lightTheme,
      themeMode: themeModeNotifier.themeMode,
      home: const IndividualDrinkScreen(),
    );
  }
}

class HomePage extends HookConsumerWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cocktailName = useState('');
    final drinkInteractor = ref.watch(drinkInteractorProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              cocktailName.value,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final cocktail =
              await drinkInteractor.fetchDrinkById<DrinkInfoModel>(id: '11000');
          cocktailName.value = cocktail?.name ?? '';
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
