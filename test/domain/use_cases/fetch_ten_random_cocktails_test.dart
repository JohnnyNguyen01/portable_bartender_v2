import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/domain/entities/drink_entity.dart';
import 'package:portable_bartender_v2/domain/models/drink_model.dart';
import 'package:portable_bartender_v2/domain/use_cases/fetch_ten_random_cocktails_use_case.dart';

import '../../data/helpers/fake_cocktail_repository.dart';

void main() {
  test('When initialized expect not null', () async {
    final mockCocktailRepo = FakeCocktailRepository();
    final sut =
        FetchTenRandomCocktailsUseCase(cocktailRepository: mockCocktailRepo);
    expect(sut, isNotNull);
  });

  testWidgets('When called expect 10 random cocktails', (tester) async {
    final mockDrinkEntities = <DrinkEntity>[];
    for (int i = 0; i <= 10; i++) {
      mockDrinkEntities.add(DrinkEntity(id: '$i', name: 'drink$i'));
    }
    final mockCocktailRepo = FakeCocktailRepository(
        fetchTenRandomCocktailsResult: Left(mockDrinkEntities));
    final sut =
        FetchTenRandomCocktailsUseCase(cocktailRepository: mockCocktailRepo);

    final result = await sut.execute<DrinkInfoModel>();
    final drinksList = mockDrinkEntities
        .map<DrinkInfoModel>(
            (e) => DrinkModel.fromEntity<DrinkInfoModel>(entity: e)!)
        .toList();
    final expectedResult = Left<List<DrinkInfoModel>?, Failure>(drinksList);
    expect(result, isNotNull);
    expect(result, expectedResult);
  });
}
