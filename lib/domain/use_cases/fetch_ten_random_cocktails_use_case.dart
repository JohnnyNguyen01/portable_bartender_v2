import 'package:dartz/dartz.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/data/repositories/i_cocktail_db_repository.dart';
import 'package:portable_bartender_v2/domain/models/drink_model.dart';

/// Fetches 10 Random cocktails from the CocktailDB.
class FetchTenRandomCocktailsUseCase {
  FetchTenRandomCocktailsUseCase(
      {required ICocktailDbRepository cocktailRepository})
      : _cocktailRepository = cocktailRepository;
  final ICocktailDbRepository _cocktailRepository;

  Future<Either<List<T>?, Failure>> execute<T extends DrinkModel>() async {
    final drinksResponse = await _cocktailRepository.fetchTenRandomCocktails();
    return drinksResponse.fold(
      (drinkEntities) {
        final drinkModels = drinkEntities
            ?.map((e) => DrinkModel.fromEntity<T>(entity: e) as T)
            .toList();
        return Left(drinkModels);
      },
      (failure) => Right(failure),
    );
  }
}
