// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'per_daily_intake_ingredient_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PerDailyIntakeIngredientContent _$PerDailyIntakeIngredientContentFromJson(
    Map<String, dynamic> json) {
  return _PerDailyIntakeIngredientContent.fromJson(json);
}

/// @nodoc
mixin _$PerDailyIntakeIngredientContent {
  String get ingredientName => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerDailyIntakeIngredientContentCopyWith<PerDailyIntakeIngredientContent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerDailyIntakeIngredientContentCopyWith<$Res> {
  factory $PerDailyIntakeIngredientContentCopyWith(
          PerDailyIntakeIngredientContent value,
          $Res Function(PerDailyIntakeIngredientContent) then) =
      _$PerDailyIntakeIngredientContentCopyWithImpl<$Res,
          PerDailyIntakeIngredientContent>;
  @useResult
  $Res call({String ingredientName, String content});
}

/// @nodoc
class _$PerDailyIntakeIngredientContentCopyWithImpl<$Res,
        $Val extends PerDailyIntakeIngredientContent>
    implements $PerDailyIntakeIngredientContentCopyWith<$Res> {
  _$PerDailyIntakeIngredientContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientName = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      ingredientName: null == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PerDailyIntakeIngredientContentImplCopyWith<$Res>
    implements $PerDailyIntakeIngredientContentCopyWith<$Res> {
  factory _$$PerDailyIntakeIngredientContentImplCopyWith(
          _$PerDailyIntakeIngredientContentImpl value,
          $Res Function(_$PerDailyIntakeIngredientContentImpl) then) =
      __$$PerDailyIntakeIngredientContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ingredientName, String content});
}

/// @nodoc
class __$$PerDailyIntakeIngredientContentImplCopyWithImpl<$Res>
    extends _$PerDailyIntakeIngredientContentCopyWithImpl<$Res,
        _$PerDailyIntakeIngredientContentImpl>
    implements _$$PerDailyIntakeIngredientContentImplCopyWith<$Res> {
  __$$PerDailyIntakeIngredientContentImplCopyWithImpl(
      _$PerDailyIntakeIngredientContentImpl _value,
      $Res Function(_$PerDailyIntakeIngredientContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ingredientName = null,
    Object? content = null,
  }) {
    return _then(_$PerDailyIntakeIngredientContentImpl(
      ingredientName: null == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PerDailyIntakeIngredientContentImpl
    with DiagnosticableTreeMixin
    implements _PerDailyIntakeIngredientContent {
  const _$PerDailyIntakeIngredientContentImpl(
      {required this.ingredientName, required this.content});

  factory _$PerDailyIntakeIngredientContentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PerDailyIntakeIngredientContentImplFromJson(json);

  @override
  final String ingredientName;
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PerDailyIntakeIngredientContent(ingredientName: $ingredientName, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PerDailyIntakeIngredientContent'))
      ..add(DiagnosticsProperty('ingredientName', ingredientName))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerDailyIntakeIngredientContentImpl &&
            (identical(other.ingredientName, ingredientName) ||
                other.ingredientName == ingredientName) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ingredientName, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerDailyIntakeIngredientContentImplCopyWith<
          _$PerDailyIntakeIngredientContentImpl>
      get copyWith => __$$PerDailyIntakeIngredientContentImplCopyWithImpl<
          _$PerDailyIntakeIngredientContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PerDailyIntakeIngredientContentImplToJson(
      this,
    );
  }
}

abstract class _PerDailyIntakeIngredientContent
    implements PerDailyIntakeIngredientContent {
  const factory _PerDailyIntakeIngredientContent(
      {required final String ingredientName,
      required final String content}) = _$PerDailyIntakeIngredientContentImpl;

  factory _PerDailyIntakeIngredientContent.fromJson(Map<String, dynamic> json) =
      _$PerDailyIntakeIngredientContentImpl.fromJson;

  @override
  String get ingredientName;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$PerDailyIntakeIngredientContentImplCopyWith<
          _$PerDailyIntakeIngredientContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
