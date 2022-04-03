import 'package:dartz/dartz.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';

abstract class IHttpClient {
  /// Http Client GET request
  Future<Either<ApiResponse, Failure>> get({required final String path,
    final Map<String, dynamic>? headers,
    final Map<String, dynamic>? queryParameters});

  /// Http Client POST request
  Future<Either<ApiResponse, Failure>> post({
    required final String path,
    final Map<String, dynamic>? requestBody,
    final Map<String, dynamic>? headers,
    final Map<String, dynamic>? queryParameters,
  });

  /// Http Client PATCH request
  Future<Either<ApiResponse, Failure>> patch({
    required final String path,
    final Map<String, dynamic>? requestBody,
    final Map<String, dynamic>? headers,
  });

  /// Http Client DELETE request
  Future<Either<ApiResponse, Failure>> delete({
    required final String path,
    final Map<String, dynamic>? requestBody,
    final Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,

  });
}