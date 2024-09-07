// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsRepositoryHash() =>
    r'58c99d9a7bc3fe5b218e26b277accc559d51350e';

/// See also [productsRepository].
@ProviderFor(productsRepository)
final productsRepositoryProvider =
    AutoDisposeProvider<ProductsRepository>.internal(
  productsRepository,
  name: r'productsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProductsRepositoryRef = AutoDisposeProviderRef<ProductsRepository>;
String _$singleProductHash() => r'296247d56f4c0bd1352d7f469fb789c73872db64';

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

/// See also [singleProduct].
@ProviderFor(singleProduct)
const singleProductProvider = SingleProductFamily();

/// See also [singleProduct].
class SingleProductFamily extends Family<AsyncValue<Product>> {
  /// See also [singleProduct].
  const SingleProductFamily();

  /// See also [singleProduct].
  SingleProductProvider call(
    int productId,
  ) {
    return SingleProductProvider(
      productId,
    );
  }

  @override
  SingleProductProvider getProviderOverride(
    covariant SingleProductProvider provider,
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
  String? get name => r'singleProductProvider';
}

/// See also [singleProduct].
class SingleProductProvider extends AutoDisposeFutureProvider<Product> {
  /// See also [singleProduct].
  SingleProductProvider(
    int productId,
  ) : this._internal(
          (ref) => singleProduct(
            ref as SingleProductRef,
            productId,
          ),
          from: singleProductProvider,
          name: r'singleProductProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleProductHash,
          dependencies: SingleProductFamily._dependencies,
          allTransitiveDependencies:
              SingleProductFamily._allTransitiveDependencies,
          productId: productId,
        );

  SingleProductProvider._internal(
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
  Override overrideWith(
    FutureOr<Product> Function(SingleProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleProductProvider._internal(
        (ref) => create(ref as SingleProductRef),
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
  AutoDisposeFutureProviderElement<Product> createElement() {
    return _SingleProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleProductProvider && other.productId == productId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, productId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleProductRef on AutoDisposeFutureProviderRef<Product> {
  /// The parameter `productId` of this provider.
  int get productId;
}

class _SingleProductProviderElement
    extends AutoDisposeFutureProviderElement<Product> with SingleProductRef {
  _SingleProductProviderElement(super.provider);

  @override
  int get productId => (origin as SingleProductProvider).productId;
}

String _$productsByCategoryHash() =>
    r'baf6b15a443a18f2895e8a66d2ada22a44a4651f';

/// See also [productsByCategory].
@ProviderFor(productsByCategory)
const productsByCategoryProvider = ProductsByCategoryFamily();

/// See also [productsByCategory].
class ProductsByCategoryFamily extends Family<AsyncValue<ProductListInfo>> {
  /// See also [productsByCategory].
  const ProductsByCategoryFamily();

  /// See also [productsByCategory].
  ProductsByCategoryProvider call(
    ProductCategory category,
  ) {
    return ProductsByCategoryProvider(
      category,
    );
  }

  @override
  ProductsByCategoryProvider getProviderOverride(
    covariant ProductsByCategoryProvider provider,
  ) {
    return call(
      provider.category,
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
  String? get name => r'productsByCategoryProvider';
}

/// See also [productsByCategory].
class ProductsByCategoryProvider
    extends AutoDisposeFutureProvider<ProductListInfo> {
  /// See also [productsByCategory].
  ProductsByCategoryProvider(
    ProductCategory category,
  ) : this._internal(
          (ref) => productsByCategory(
            ref as ProductsByCategoryRef,
            category,
          ),
          from: productsByCategoryProvider,
          name: r'productsByCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$productsByCategoryHash,
          dependencies: ProductsByCategoryFamily._dependencies,
          allTransitiveDependencies:
              ProductsByCategoryFamily._allTransitiveDependencies,
          category: category,
        );

  ProductsByCategoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final ProductCategory category;

  @override
  Override overrideWith(
    FutureOr<ProductListInfo> Function(ProductsByCategoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductsByCategoryProvider._internal(
        (ref) => create(ref as ProductsByCategoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductListInfo> createElement() {
    return _ProductsByCategoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsByCategoryProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProductsByCategoryRef on AutoDisposeFutureProviderRef<ProductListInfo> {
  /// The parameter `category` of this provider.
  ProductCategory get category;
}

class _ProductsByCategoryProviderElement
    extends AutoDisposeFutureProviderElement<ProductListInfo>
    with ProductsByCategoryRef {
  _ProductsByCategoryProviderElement(super.provider);

  @override
  ProductCategory get category =>
      (origin as ProductsByCategoryProvider).category;
}

String _$allCategoriesHash() => r'bca4d71a90a1304220140b1a6dd825c42c187b11';

/// See also [allCategories].
@ProviderFor(allCategories)
final allCategoriesProvider = AutoDisposeFutureProvider<List<String>>.internal(
  allCategories,
  name: r'allCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$allCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AllCategoriesRef = AutoDisposeFutureProviderRef<List<String>>;
String _$allProductsHash() => r'cad31cced984755ff8ec9bd92de297fb6ce3687d';

/// See also [AllProducts].
@ProviderFor(AllProducts)
final allProductsProvider =
    AutoDisposeAsyncNotifierProvider<AllProducts, ProductListInfo>.internal(
  AllProducts.new,
  name: r'allProductsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$allProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AllProducts = AutoDisposeAsyncNotifier<ProductListInfo>;
String _$wishListProductsHash() => r'1a585ef8446add55e52753ad9340822220afc88a';

/// See also [WishListProducts].
@ProviderFor(WishListProducts)
final wishListProductsProvider =
    AutoDisposeNotifierProvider<WishListProducts, ProductListInfo>.internal(
  WishListProducts.new,
  name: r'wishListProductsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wishListProductsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WishListProducts = AutoDisposeNotifier<ProductListInfo>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
