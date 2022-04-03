import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    int? statusCode,
    String? message,
    Map<String,dynamic>? payload,
}) = _ApiResponseModel;
}
