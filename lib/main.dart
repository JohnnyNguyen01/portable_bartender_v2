import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portable_bartender_v2/data/repositories/cocktail_db_repository_implementation.dart';
import 'package:portable_bartender_v2/domain/models/drink_model.dart';

import 'domain/interactors/drink_interactor.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(final context, final ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
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
          final cocktail = await drinkInteractor.fetchDrinkById<DrinkInfoModel>(id:'11000');
          print(cocktail);
          cocktailName.value = cocktail?.name ?? '';
          // final cocktail = await cocktailRepo.fetchCocktailById(id: '11000');
          // cocktail.leftMap(
          //   (apiResponse) =>
          //      cocktailName.value = apiResponse.payload?['drinks'][0]['strDrink'],
          // );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
