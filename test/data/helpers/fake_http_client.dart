import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portable_bartender_v2/core/error/failure.dart';
import 'package:portable_bartender_v2/core/network/api_response.dart';
import 'package:portable_bartender_v2/data/clients/http/i_http_client.dart';

class FakeHttpClient extends Fake implements IHttpClient{
  FakeHttpClient({this.getRequestResponse});
  Either<ApiResponse, Failure>? getRequestResponse;

  @override
  Future<Either<ApiResponse, Failure>> get({required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters}) async {
    final response = getRequestResponse;
    if (response != null) return response;
    return const Right(Failure(message: 'Mock result not implemented'));
  }
}