import 'package:dartz/dartz.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';

import '../../domain/entities/drink_entity.dart';

abstract class ICocktailDbRepository {
  /// Fetch a cocktail by its id.
  Future<Either<ApiResponse, Failure>> fetchCocktailById({required String id});

  /// Fetches 10 random cocktails from the CocktailDB
  Future<Either<List<DrinkEntity>?, Failure>> fetchTenRandomCocktails();

  /// Fetches a random drink
  Future<Either<DrinkEntity?, Failure>> fetchRandomDrink();
}
