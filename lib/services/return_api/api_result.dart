import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult {
  factory ApiResult.success(T sucess) = Success;
  factory ApiResult.error(String message) = Error;
}
