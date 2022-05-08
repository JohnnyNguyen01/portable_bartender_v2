import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portable_bartender_v2/core/constants/api_field_names.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';
import 'package:portable_bartender_v2/data/clients/http/http_client_implementation.dart';
import 'package:portable_bartender_v2/data/clients/http/i_http_client.dart';
import 'package:portable_bartender_v2/data/repositories/api_keys.dart';
import 'package:portable_bartender_v2/data/repositories/i_cocktail_db_repository.dart';
import 'package:portable_bartender_v2/domain/entities/drink_entity.dart';

/// CocktailDBRepository provider
final cocktailRepositoryProvider =
    Provider<CocktailDbRepositoryImplementation>((ref) {
  final httpClient = ref.watch(httpClientProvider);
  return CocktailDbRepositoryImplementation(httpClient: httpClient);
});

class CocktailDbRepositoryImplementation implements ICocktailDbRepository {
  CocktailDbRepositoryImplementation({required IHttpClient httpClient})
      : _httpClient = httpClient;
  final IHttpClient _httpClient;
  final baseUrl = 'https://www.thecocktaildb.com/api/json/v2/$cocktailDbApiKey';

  @override
  Future<Either<ApiResponse, Failure>> fetchCocktailById(
      {required String id}) async {
    if (id.isEmpty) return const Right(Failure(message: 'Empty drinkId'));
    final path = '$baseUrl/lookup.php?i=$id';
    final response = await _httpClient.get(path: path);
    return response.fold(
        (apiResponse) => Left(apiResponse), (failure) => Right(failure));
  }

  @override
  Future<Either<List<DrinkEntity>?, Failure>> fetchTenRandomCocktails() async {
    final path = '$baseUrl/randomSelection.php';
    final response = await _httpClient.get(path: path);
    return response.fold(
      (apiResponse) => Left(_mapApiResponseToDrinkEntities(apiResponse)),
      (failure) => Right(failure),
    );
  }

  List<DrinkEntity>? _mapApiResponseToDrinkEntities(ApiResponse response) {
    final data = response.payload?[drinksField] as List<Map<String, dynamic>>?;
    if (data == null) return null;
    return data.map((json) => DrinkEntity.fromJson(json)).toList();
  }

  @override
  Future<Either<DrinkEntity?, Failure>> fetchRandomDrink() async {
    final path = '$baseUrl/random.php';
    final response = await _httpClient.get(path: path);
    return response.fold(
        (apiResponse) => Left(_mapApiResponseToDrinkEntity(apiResponse)),
        (failure) => Right(failure));
  }

  DrinkEntity? _mapApiResponseToDrinkEntity(ApiResponse response) {
    final data = response.payload?[drinksField].first;
    if (data == null) return null;
    return DrinkEntity.fromJson(data);
  }
}
