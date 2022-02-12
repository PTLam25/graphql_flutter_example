import 'package:json_annotation/json_annotation.dart';

enum Gender {
  @JsonValue('Male')
  male,
  @JsonValue('Female')
  female,
  @JsonValue('Genderless')
  genderless,
  @JsonValue('unknown')
  unknown,
}
