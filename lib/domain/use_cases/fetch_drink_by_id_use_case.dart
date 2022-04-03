import 'package:portable_bartender_v2/core/constants/api_field_names.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';
import 'package:portable_bartender_v2/data/repositories/i_cocktail_db_repository.dart';
import 'package:portable_bartender_v2/domain/entities/drink_entity.dart';

import '../models/drink_model.dart';

/// Use case for fetching drink data from an associated id. Specify T generic
/// in order to transform result into desired DrinkModel union type.
class FetchDrinkByIdUseCase {
  FetchDrinkByIdUseCase({required ICocktailDbRepository cocktailRepository})
      : _cocktailRepository = cocktailRepository;
  final ICocktailDbRepository _cocktailRepository;

  Future<T?> execute<T extends DrinkModel>({required String id}) async {
    final apiResponse = await _cocktailRepository.fetchCocktailById(id: id);
    return apiResponse.fold(
      (apiResponse)=> _mapResponse(apiResponse),
      (failure) => null,
    );
  }

  T? _mapResponse<T extends DrinkModel>(ApiResponse apiResponse){
    final payload = apiResponse.payload?[drinksField][0];
    if(payload == null) return null;
    final drinkEntity = DrinkEntity.fromJson(payload);
    return DrinkModel.fromEntity<T>(entity: drinkEntity) as T;
  }
}
