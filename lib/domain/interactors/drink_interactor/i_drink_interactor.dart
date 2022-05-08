import 'package:portable_bartender_v2/domain/models/drink_model.dart';

abstract class IDrinkInteractor {
  Future<T?> fetchDrinkById<T extends DrinkModel>({required String id});
  Future<List<T>?> fetchTenRandomCocktails<T extends DrinkModel>();
  Future<T?> fetchRandomDrink<T extends DrinkModel>();
}
