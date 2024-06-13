// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NutritionInformation _$NutritionInformationFromJson(Map<String, dynamic> json) {
  return _NutritionInformation.fromJson(json);
}

/// @nodoc
mixin _$NutritionInformation {
  String get nutritionName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionInformationCopyWith<NutritionInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionInformationCopyWith<$Res> {
  factory $NutritionInformationCopyWith(NutritionInformation value,
          $Res Function(NutritionInformation) then) =
      _$NutritionInformationCopyWithImpl<$Res, NutritionInformation>;
  @useResult
  $Res call({String nutritionName, String description});
}

/// @nodoc
class _$NutritionInformationCopyWithImpl<$Res,
        $Val extends NutritionInformation>
    implements $NutritionInformationCopyWith<$Res> {
  _$NutritionInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutritionName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      nutritionName: null == nutritionName
          ? _value.nutritionName
          : nutritionName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutritionInformationImplCopyWith<$Res>
    implements $NutritionInformationCopyWith<$Res> {
  factory _$$NutritionInformationImplCopyWith(_$NutritionInformationImpl value,
          $Res Function(_$NutritionInformationImpl) then) =
      __$$NutritionInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nutritionName, String description});
}

/// @nodoc
class __$$NutritionInformationImplCopyWithImpl<$Res>
    extends _$NutritionInformationCopyWithImpl<$Res, _$NutritionInformationImpl>
    implements _$$NutritionInformationImplCopyWith<$Res> {
  __$$NutritionInformationImplCopyWithImpl(_$NutritionInformationImpl _value,
      $Res Function(_$NutritionInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutritionName = null,
    Object? description = null,
  }) {
    return _then(_$NutritionInformationImpl(
      nutritionName: null == nutritionName
          ? _value.nutritionName
          : nutritionName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NutritionInformationImpl
    with DiagnosticableTreeMixin
    implements _NutritionInformation {
  const _$NutritionInformationImpl(
      {required this.nutritionName, required this.description});

  factory _$NutritionInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutritionInformationImplFromJson(json);

  @override
  final String nutritionName;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NutritionInformation(nutritionName: $nutritionName, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NutritionInformation'))
      ..add(DiagnosticsProperty('nutritionName', nutritionName))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutritionInformationImpl &&
            (identical(other.nutritionName, nutritionName) ||
                other.nutritionName == nutritionName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nutritionName, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NutritionInformationImplCopyWith<_$NutritionInformationImpl>
      get copyWith =>
          __$$NutritionInformationImplCopyWithImpl<_$NutritionInformationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutritionInformationImplToJson(
      this,
    );
  }
}

abstract class _NutritionInformation implements NutritionInformation {
  const factory _NutritionInformation(
      {required final String nutritionName,
      required final String description}) = _$NutritionInformationImpl;

  factory _NutritionInformation.fromJson(Map<String, dynamic> json) =
      _$NutritionInformationImpl.fromJson;

  @override
  String get nutritionName;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$NutritionInformationImplCopyWith<_$NutritionInformationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
