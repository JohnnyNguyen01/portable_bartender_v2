import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';
import 'package:portable_bartender_v2/data/repositories/i_cocktail_db_repository.dart';
import 'package:portable_bartender_v2/domain/entities/drink_entity.dart';

class FakeCocktailRepository extends Fake implements ICocktailDbRepository {
  FakeCocktailRepository({
    this.fetchCocktailByIdResult,
    this.fetchTenRandomCocktailsResult,
  });

  Either<ApiResponse, Failure>? fetchCocktailByIdResult;
  Either<List<DrinkEntity>?, Failure>? fetchTenRandomCocktailsResult;

  @override
  Future<Either<ApiResponse, Failure>> fetchCocktailById(
      {required String id}) async {
    final result = fetchCocktailByIdResult;
    if (result == null) return const Right(Failure(message: 'No mock given'));
    return result;
  }

  @override
  Future<Either<List<DrinkEntity>?, Failure>> fetchTenRandomCocktails() async {
    final result = fetchTenRandomCocktailsResult;
    if (result == null) {
      return const Right(Failure(message: 'No Mock given'));
    }
    return result;
  }
}
