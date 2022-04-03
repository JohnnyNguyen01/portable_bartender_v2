import 'package:dartz/dartz.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';

abstract class ICocktailDbRepository{
  Future<Either<ApiResponse, Failure>> fetchCocktailById({required String id});

}