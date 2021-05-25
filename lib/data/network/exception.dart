import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception.freezed.dart';

@freezed
class CustomException with _$CustomException {
  const factory CustomException.serverError() = _ServerError;
}
