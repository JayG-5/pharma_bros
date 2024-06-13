// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchInfo _$SearchInfoFromJson(Map<String, dynamic> json) {
  return _SearchInfo.fromJson(json);
}

/// @nodoc
mixin _$SearchInfo {
  String get targetWord => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<Product> get productList => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchInfoCopyWith<SearchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchInfoCopyWith<$Res> {
  factory $SearchInfoCopyWith(
          SearchInfo value, $Res Function(SearchInfo) then) =
      _$SearchInfoCopyWithImpl<$Res, SearchInfo>;
  @useResult
  $Res call(
      {String targetWord, int page, List<Product> productList, int totalCount});
}

/// @nodoc
class _$SearchInfoCopyWithImpl<$Res, $Val extends SearchInfo>
    implements $SearchInfoCopyWith<$Res> {
  _$SearchInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetWord = null,
    Object? page = null,
    Object? productList = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      targetWord: null == targetWord
          ? _value.targetWord
          : targetWord // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchInfoImplCopyWith<$Res>
    implements $SearchInfoCopyWith<$Res> {
  factory _$$SearchInfoImplCopyWith(
          _$SearchInfoImpl value, $Res Function(_$SearchInfoImpl) then) =
      __$$SearchInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String targetWord, int page, List<Product> productList, int totalCount});
}

/// @nodoc
class __$$SearchInfoImplCopyWithImpl<$Res>
    extends _$SearchInfoCopyWithImpl<$Res, _$SearchInfoImpl>
    implements _$$SearchInfoImplCopyWith<$Res> {
  __$$SearchInfoImplCopyWithImpl(
      _$SearchInfoImpl _value, $Res Function(_$SearchInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetWord = null,
    Object? page = null,
    Object? productList = null,
    Object? totalCount = null,
  }) {
    return _then(_$SearchInfoImpl(
      targetWord: null == targetWord
          ? _value.targetWord
          : targetWord // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchInfoImpl with DiagnosticableTreeMixin implements _SearchInfo {
  const _$SearchInfoImpl(
      {required this.targetWord,
      required this.page,
      required final List<Product> productList,
      required this.totalCount})
      : _productList = productList;

  factory _$SearchInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchInfoImplFromJson(json);

  @override
  final String targetWord;
  @override
  final int page;
  final List<Product> _productList;
  @override
  List<Product> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  final int totalCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchInfo(targetWord: $targetWord, page: $page, productList: $productList, totalCount: $totalCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchInfo'))
      ..add(DiagnosticsProperty('targetWord', targetWord))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('productList', productList))
      ..add(DiagnosticsProperty('totalCount', totalCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInfoImpl &&
            (identical(other.targetWord, targetWord) ||
                other.targetWord == targetWord) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, targetWord, page,
      const DeepCollectionEquality().hash(_productList), totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchInfoImplCopyWith<_$SearchInfoImpl> get copyWith =>
      __$$SearchInfoImplCopyWithImpl<_$SearchInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchInfoImplToJson(
      this,
    );
  }
}

abstract class _SearchInfo implements SearchInfo {
  const factory _SearchInfo(
      {required final String targetWord,
      required final int page,
      required final List<Product> productList,
      required final int totalCount}) = _$SearchInfoImpl;

  factory _SearchInfo.fromJson(Map<String, dynamic> json) =
      _$SearchInfoImpl.fromJson;

  @override
  String get targetWord;
  @override
  int get page;
  @override
  List<Product> get productList;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$SearchInfoImplCopyWith<_$SearchInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
