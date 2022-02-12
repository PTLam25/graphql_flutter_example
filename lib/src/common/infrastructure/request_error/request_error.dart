import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_error.freezed.dart';

@freezed
class RequestError with _$RequestError {
  const factory RequestError.serverError(Object error) = _ServerError;

  const factory RequestError.unhandledError(Object error) = _UnhandledError;
}
