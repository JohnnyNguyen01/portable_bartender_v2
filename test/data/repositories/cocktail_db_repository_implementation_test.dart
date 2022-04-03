import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';
import 'package:portable_bartender_v2/data/repositories/cocktail_db_repository_implementation.dart';

import '../helpers/fake_http_client.dart';

void main() {
  test('When initialized expect not null', () async {
    final mockHttpClient = FakeHttpClient();
    final sut = CocktailDbRepositoryImplementation(httpClient: mockHttpClient);
    expect(sut, isNotNull);
  });

  group('FetchCocktailById', ()  {
    test('When valid id provided expect ApiResponse', () async {
      final mockHttpClient = FakeHttpClient(
        getRequestResponse: const Left(
          ApiResponse(),
        ),
      );

      final sut =
          CocktailDbRepositoryImplementation(httpClient: mockHttpClient);
      final response = await sut.fetchCocktailById(id: 'testId');
      final result = response.fold((apiResponse) => apiResponse, (failure) => failure);

      expect(result is ApiResponse, true);
    });

    test('When drinkId is empty expect Failure', ()async{
      final mockHttpClient = FakeHttpClient(
        getRequestResponse: const Left(
          ApiResponse(),
        ),
      );

      final sut =
      CocktailDbRepositoryImplementation(httpClient: mockHttpClient);
      final response = await sut.fetchCocktailById(id: '');
      final result = response.fold((apiResponse) => apiResponse, (failure) => failure);

      expect(result is Failure, true);
    });
  });
}
