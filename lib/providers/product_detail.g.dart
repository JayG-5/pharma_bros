// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productDetailNotifierHash() =>
    r'156578d55d63cfc151ee2bd8b802b52b5a38076c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ProductDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<ProductDetail> {
  late final int productId;

  FutureOr<ProductDetail> build(
    int productId,
  );
}

/// See also [ProductDetailNotifier].
@ProviderFor(ProductDetailNotifier)
const productDetailNotifierProvider = ProductDetailNotifierFamily();

/// See also [ProductDetailNotifier].
class ProductDetailNotifierFamily extends Family<AsyncValue<ProductDetail>> {
  /// See also [ProductDetailNotifier].
  const ProductDetailNotifierFamily();

  /// See also [ProductDetailNotifier].
  ProductDetailNotifierProvider call(
    int productId,
  ) {
    return ProductDetailNotifierProvider(
      productId,
    );
  }

  @override
  ProductDetailNotifierProvider getProviderOverride(
    covariant ProductDetailNotifierProvider provider,
  ) {
    return call(
      provider.productId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productDetailNotifierProvider';
}

/// See also [ProductDetailNotifier].
class ProductDetailNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProductDetailNotifier,
        ProductDetail> {
  /// See also [ProductDetailNotifier].
  ProductDetailNotifierProvider(
    int productId,
  ) : this._internal(
          () => ProductDetailNotifier()..productId = productId,
          from: productDetailNotifierProvider,
          name: r'productDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productDetailNotifierHash,
          dependencies: ProductDetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              ProductDetailNotifierFamily._allTransitiveDependencies,
          productId: productId,
        );

  ProductDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.productId,
  }) : super.internal();

  final int productId;

  @override
  FutureOr<ProductDetail> runNotifierBuild(
    covariant ProductDetailNotifier notifier,
  ) {
    return notifier.build(
      productId,
    );
  }

  @override
  Override overrideWith(ProductDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProductDetailNotifierProvider._internal(
        () => create()..productId = productId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        productId: productId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProductDetailNotifier, ProductDetail>
      createElement() {
    return _ProductDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailNotifierProvider &&
        other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductDetailNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<ProductDetail> {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _ProductDetailNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProductDetailNotifier,
        ProductDetail> with ProductDetailNotifierRef {
  _ProductDetailNotifierProviderElement(super.provider);

  @override
  int get productId => (origin as ProductDetailNotifierProvider).productId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
