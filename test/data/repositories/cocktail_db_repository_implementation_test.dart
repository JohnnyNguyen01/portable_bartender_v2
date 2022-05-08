import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portable_bartender_v2/core/constants/api_field_names.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';
import 'package:portable_bartender_v2/data/repositories/cocktail_db_repository_implementation.dart';
import 'package:portable_bartender_v2/domain/entities/drink_entity.dart';

import '../helpers/fake_http_client.dart';

void main() {
  test('When initialized expect not null', () async {
    final mockHttpClient = FakeHttpClient();
    final sut = CocktailDbRepositoryImplementation(httpClient: mockHttpClient);
    expect(sut, isNotNull);
  });

  group('FetchCocktailById', () {
    test('When valid id provided expect ApiResponse', () async {
      final mockHttpClient = FakeHttpClient(
        getRequestResponse: const Left(
          ApiResponse(),
        ),
      );

      final sut =
          CocktailDbRepositoryImplementation(httpClient: mockHttpClient);
      final response = await sut.fetchCocktailById(id: 'testId');
      final result =
          response.fold((apiResponse) => apiResponse, (failure) => failure);

      expect(result is ApiResponse, true);
    });

    test('When drinkId is empty expect Failure', () async {
      final mockHttpClient = FakeHttpClient(
        getRequestResponse: const Left(
          ApiResponse(),
        ),
      );

      final sut =
          CocktailDbRepositoryImplementation(httpClient: mockHttpClient);
      final response = await sut.fetchCocktailById(id: '');
      final result =
          response.fold((apiResponse) => apiResponse, (failure) => failure);

      expect(result is Failure, true);
    });
  });

  group('FetchTenRandomCocktails', () {
    test('When successful expect List of Drink Entities', () async {
      final mockHttpClient = FakeHttpClient(
        getRequestResponse: Left(
          ApiResponse(payload: {
            drinksField: _MockDrinkData.getTenMockDrinksAsRawJson,
          }),
        ),
      );

      final sut =
          CocktailDbRepositoryImplementation(httpClient: mockHttpClient);
      final response = await sut.fetchTenRandomCocktails();
      final result = response.fold(
        (apiResponse) => apiResponse,
        (failure) => failure,
      );

      expect(result is List<DrinkEntity>?, true);
      expect(result, _MockDrinkData.getTenMockDrinkEntities);
    });

    test('When httpClient returns Failure expect same Failure ', () async {
      const mockFailure = Failure(message: 'Something whent wrong');
      final mockHttpClient = FakeHttpClient(
        getRequestResponse: const Right(mockFailure),
      );

      final sut =
          CocktailDbRepositoryImplementation(httpClient: mockHttpClient);
      final response = await sut.fetchTenRandomCocktails();
      final result = response.fold(
        (apiResponse) => apiResponse,
        (failure) => failure,
      );

      expect(result, mockFailure);
    });
  });

  group('FetchRandomDrink', () {
    test('When called expect random drink', () async {
      const mockDrinkEntity = DrinkEntity(id: 'drinkId');
      final mockPayload = {
        "drinks": [mockDrinkEntity.toJson()]
      };
      final mockHttpClient = FakeHttpClient(
        getRequestResponse: Left(
          ApiResponse(
            statusCode: 200,
            payload: mockPayload,
          ),
        ),
      );

      final sut =
          CocktailDbRepositoryImplementation(httpClient: mockHttpClient);

      final response = await sut.fetchRandomDrink();
      final result = response.fold((drink) => drink, (failure) => failure);

      expect(result, mockDrinkEntity);
    });
  });

  test('When failure returned from httpClient expect Failure', () async {
    const mockFailure = Failure(message: 'oops something went wrong');
    final mockHttpClient = FakeHttpClient(
      getRequestResponse: const Right(mockFailure),
    );

    final sut = CocktailDbRepositoryImplementation(httpClient: mockHttpClient);

    final response = await sut.fetchRandomDrink();
    final result = response.fold((drink) => drink, (failure) => failure);

    expect(result is Failure, true);
    expect(result, mockFailure);
  });
}

class _MockDrinkData {
  static List<Map<String, dynamic>> get getTenMockDrinksAsRawJson {
    final drinksAsJson = <Map<String, dynamic>>[];
    for (int i = 0; i <= 10; i++) {
      drinksAsJson.add(DrinkEntity(id: '$i', name: 'drink$i').toJson());
    }
    return drinksAsJson;
  }

  static List<DrinkEntity> get getTenMockDrinkEntities {
    final drinks = <DrinkEntity>[];
    for (int i = 0; i <= 10; i++) {
      drinks.add(DrinkEntity(id: '$i', name: 'drink$i'));
    }
    return drinks;
  }
}
