// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'intake_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IntakeMethod _$IntakeMethodFromJson(Map<String, dynamic> json) {
  return _IntakeMethod.fromJson(json);
}

/// @nodoc
mixin _$IntakeMethod {
  String get time => throw _privateConstructorUsedError;
  String get detailTime => throw _privateConstructorUsedError;
  String get intakeUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntakeMethodCopyWith<IntakeMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntakeMethodCopyWith<$Res> {
  factory $IntakeMethodCopyWith(
          IntakeMethod value, $Res Function(IntakeMethod) then) =
      _$IntakeMethodCopyWithImpl<$Res, IntakeMethod>;
  @useResult
  $Res call({String time, String detailTime, String intakeUnit});
}

/// @nodoc
class _$IntakeMethodCopyWithImpl<$Res, $Val extends IntakeMethod>
    implements $IntakeMethodCopyWith<$Res> {
  _$IntakeMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? detailTime = null,
    Object? intakeUnit = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      detailTime: null == detailTime
          ? _value.detailTime
          : detailTime // ignore: cast_nullable_to_non_nullable
              as String,
      intakeUnit: null == intakeUnit
          ? _value.intakeUnit
          : intakeUnit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntakeMethodImplCopyWith<$Res>
    implements $IntakeMethodCopyWith<$Res> {
  factory _$$IntakeMethodImplCopyWith(
          _$IntakeMethodImpl value, $Res Function(_$IntakeMethodImpl) then) =
      __$$IntakeMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String time, String detailTime, String intakeUnit});
}

/// @nodoc
class __$$IntakeMethodImplCopyWithImpl<$Res>
    extends _$IntakeMethodCopyWithImpl<$Res, _$IntakeMethodImpl>
    implements _$$IntakeMethodImplCopyWith<$Res> {
  __$$IntakeMethodImplCopyWithImpl(
      _$IntakeMethodImpl _value, $Res Function(_$IntakeMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? detailTime = null,
    Object? intakeUnit = null,
  }) {
    return _then(_$IntakeMethodImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      detailTime: null == detailTime
          ? _value.detailTime
          : detailTime // ignore: cast_nullable_to_non_nullable
              as String,
      intakeUnit: null == intakeUnit
          ? _value.intakeUnit
          : intakeUnit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntakeMethodImpl with DiagnosticableTreeMixin implements _IntakeMethod {
  const _$IntakeMethodImpl(
      {required this.time, required this.detailTime, required this.intakeUnit});

  factory _$IntakeMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntakeMethodImplFromJson(json);

  @override
  final String time;
  @override
  final String detailTime;
  @override
  final String intakeUnit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IntakeMethod(time: $time, detailTime: $detailTime, intakeUnit: $intakeUnit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IntakeMethod'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('detailTime', detailTime))
      ..add(DiagnosticsProperty('intakeUnit', intakeUnit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntakeMethodImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.detailTime, detailTime) ||
                other.detailTime == detailTime) &&
            (identical(other.intakeUnit, intakeUnit) ||
                other.intakeUnit == intakeUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, detailTime, intakeUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntakeMethodImplCopyWith<_$IntakeMethodImpl> get copyWith =>
      __$$IntakeMethodImplCopyWithImpl<_$IntakeMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntakeMethodImplToJson(
      this,
    );
  }
}

abstract class _IntakeMethod implements IntakeMethod {
  const factory _IntakeMethod(
      {required final String time,
      required final String detailTime,
      required final String intakeUnit}) = _$IntakeMethodImpl;

  factory _IntakeMethod.fromJson(Map<String, dynamic> json) =
      _$IntakeMethodImpl.fromJson;

  @override
  String get time;
  @override
  String get detailTime;
  @override
  String get intakeUnit;
  @override
  @JsonKey(ignore: true)
  _$$IntakeMethodImplCopyWith<_$IntakeMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
