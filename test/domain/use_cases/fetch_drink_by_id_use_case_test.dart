import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';
import 'package:portable_bartender_v2/domain/entities/drink_entity.dart';
import 'package:portable_bartender_v2/domain/models/drink_model.dart';
import 'package:portable_bartender_v2/domain/use_cases/fetch_drink_by_id_use_case.dart';

import '../../data/helpers/fake_cocktail_repository.dart';

void main() {
  test('When initialized expect not null', () async {
    final fakeCocktailRepo = FakeCocktailRepository();

    final sut = FetchDrinkByIdUseCase(cocktailRepository: fakeCocktailRepo);

    expect(sut, isNotNull);
  });

  test('When execute run with valid drinkId expect success with model returned',
      () async {
    const mockDrinkEntity = DrinkEntity(id: 'id', name: 'test');
    final fakeCocktailRepo = FakeCocktailRepository(
      fetchCocktailByIdResult: Left(
        ApiResponse(
          statusCode: 200,
          payload: mockDrinkEntity.toJson(),
        ),
      ),
    );

    final sut = FetchDrinkByIdUseCase(cocktailRepository: fakeCocktailRepo);
    final result = await sut.execute<DrinkInfoModel>(id: 'id');

    expect(result, isNotNull);
    expect(result is DrinkInfoModel, true);
  });

  test('When failureState apiResponse returned expect null', () async {
    const mockDrinkEntity = DrinkEntity(id: 'id', name: 'test');
    final fakeCocktailRepo = FakeCocktailRepository(
      fetchCocktailByIdResult: const Right(
      Failure(message: 'test-failure'),
      ),
    );

    final sut = FetchDrinkByIdUseCase(cocktailRepository: fakeCocktailRepo);
    final result = await sut.execute<DrinkInfoModel>(id: 'id');

    expect(result, isNull);
  });
}
