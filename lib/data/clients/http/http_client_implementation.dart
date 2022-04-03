import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';
import 'i_http_client.dart';
import 'package:dio/dio.dart';

final httpClientProvider = Provider<HttpClientImplementation>((ref) {
  final dio = Dio();
  return HttpClientImplementation(dio: dio);
});

class HttpClientImplementation implements IHttpClient {
  HttpClientImplementation({required Dio dio}) : _dio = dio;
  final Dio _dio;

  @override
  Future<Either<ApiResponse, Failure>> delete({
    required String path,
    Map<String, dynamic>? requestBody,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final options = Options(headers: headers);
      final response = await _dio.delete<dynamic>(
        path,
        queryParameters: queryParameters,
        options: options,
        data: requestBody,
      );
      final apiResponse = ApiResponse(
        statusCode: response.statusCode,
        message: response.statusMessage,
      );
      return Left(apiResponse);
    } on DioError catch (e) {
      return Right(Failure(
        errorCode: e.response?.statusCode,
        message: e.message,
      ));
    } on Exception catch (_) {
      return const Right(Failure(
        errorCode: 400,
        message: 'Something went wrong',
      ));
    }
  }

  @override
  Future<Either<ApiResponse, Failure>> get(
      {required String path,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final options = Options(headers: headers);
      final response = await _dio.get<dynamic>(
        path,
        options: options,
        queryParameters: queryParameters,
      );
      final apiResponse = ApiResponse(
          statusCode: response.statusCode,
          message: response.statusMessage,
          payload: response.data);
      return Left(apiResponse);
    } on DioError catch (e) {
      return Right(Failure(
        errorCode: e.response?.statusCode,
        message: e.message,
      ));
    } on Exception catch (_) {
      return const Right(Failure(
        errorCode: 400,
        message: 'Something went wrong',
      ));
    }
  }

  @override
  Future<Either<ApiResponse, Failure>> post(
      {required String path,
      Map<String, dynamic>? requestBody,
      Map<String, dynamic>? headers,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final options = Options(headers: headers);
      final response = await _dio.post<dynamic>(
        path,
        options: options,
        queryParameters: queryParameters,
      );
      final apiResponse = ApiResponse(
        statusCode: response.statusCode,
        message: response.statusMessage,
      );
      return Left(apiResponse);
    } on DioError catch (e) {
      return Right(Failure(
        errorCode: e.response?.statusCode,
        message: e.message,
      ));
    } on Exception catch (_) {
      return const Right(Failure(
        errorCode: 400,
        message: 'Something went wrong',
      ));
    }
  }

  @override
  Future<Either<ApiResponse, Failure>> patch(
      {required String path,
      Map<String, dynamic>? requestBody,
      Map<String, dynamic>? headers}) async {
    try {
      final options = Options(headers: headers);
      final response = await _dio.patch(
        path,
        options: options,
      );
      final apiResponse = ApiResponse(
        statusCode: response.statusCode,
        message: response.statusMessage,
      );
      return Left(apiResponse);
    } on DioError catch (e) {
      return Right(Failure(
        errorCode: e.response?.statusCode,
        message: e.message,
      ));
    } on Exception catch (_) {
      return const Right(Failure(
        errorCode: 400,
        message: 'Something went wrong',
      ));
    }
  }
}
