import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portable_bartender_v2/data/repositories/cocktail_db_repository_implementation.dart';
import 'package:portable_bartender_v2/data/repositories/i_cocktail_db_repository.dart';
import 'package:portable_bartender_v2/domain/interactors/drink_interactor/i_drink_interactor.dart';
import 'package:portable_bartender_v2/domain/models/drink_model.dart';
import 'package:portable_bartender_v2/domain/use_cases/fetch_drink_by_id_use_case.dart';
import 'package:portable_bartender_v2/domain/use_cases/fetch_ten_random_cocktails_use_case.dart';

import '../../use_cases/fetch_random_drink_use_case.dart';

final drinkInteractorProvider = Provider<DrinkInteractor>((ref) {
  final cocktailRepository = ref.watch(cocktailRepositoryProvider);
  return DrinkInteractor(cocktailRepository: cocktailRepository);
});

class DrinkInteractor implements IDrinkInteractor {
  DrinkInteractor({required ICocktailDbRepository cocktailRepository})
      : _cocktailRepository = cocktailRepository;
  final ICocktailDbRepository _cocktailRepository;

  @override
  Future<T?> fetchDrinkById<T extends DrinkModel>({required String id}) async =>
      FetchDrinkByIdUseCase(cocktailRepository: _cocktailRepository)
          .execute(id: id);

  @override
  Future<List<T>?> fetchTenRandomCocktails<T extends DrinkModel>() async {
    final response = await FetchTenRandomCocktailsUseCase(
            cocktailRepository: _cocktailRepository)
        .execute<T>();
    return response.fold(
      (drinkList) => drinkList,
      (r) => [],
    );
  }

  @override
  Future<T?> fetchRandomDrink<T extends DrinkModel>() async {
    final response =
        await FetchRandomDrinkUseCase(cocktailDbRepository: _cocktailRepository)
            .execute<T>();
    return response;
  }
}
