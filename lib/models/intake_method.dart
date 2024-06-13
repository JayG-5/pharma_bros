import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'intake_method.freezed.dart';
part 'intake_method.g.dart';

@freezed
class IntakeMethod with _$IntakeMethod {
  const factory IntakeMethod({
    required String time,
    required String detailTime,
    required String intakeUnit,
  }) = _IntakeMethod;

  factory IntakeMethod.fromJson(Map<String, Object?> json)
  => _$IntakeMethodFromJson(json);
}