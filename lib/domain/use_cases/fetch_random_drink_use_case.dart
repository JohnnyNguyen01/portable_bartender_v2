import 'package:portable_bartender_v2/data/repositories/i_cocktail_db_repository.dart';

import '../models/drink_model.dart';

class FetchRandomDrinkUseCase {
  FetchRandomDrinkUseCase({required ICocktailDbRepository cocktailDbRepository})
      : _cocktaiRepository = cocktailDbRepository;

  final ICocktailDbRepository _cocktaiRepository;

  Future<T?> execute<T extends DrinkModel>() async {
    final response = await _cocktaiRepository.fetchRandomDrink();
    return response.fold(
      (entity) => DrinkModel.fromEntity<T>(entity: entity),
      (r) => null,
    );
  }
}
