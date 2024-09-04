// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cartsRepositoryHash() => r'c5537ac43589001ae5c825fdacb3130e21b03c94';

/// See also [cartsRepository].
@ProviderFor(cartsRepository)
final cartsRepositoryProvider = AutoDisposeProvider<CartsRepository>.internal(
  cartsRepository,
  name: r'cartsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$cartsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CartsRepositoryRef = AutoDisposeProviderRef<CartsRepository>;
String _$allCartsHash() => r'562d79095f8bd883364cccb9f0adee4bbbaa33d8';

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

/// See also [allCarts].
@ProviderFor(allCarts)
const allCartsProvider = AllCartsFamily();

/// See also [allCarts].
class AllCartsFamily extends Family<AsyncValue<List<Cart>>> {
  /// See also [allCarts].
  const AllCartsFamily();

  /// See also [allCarts].
  AllCartsProvider call({
    int limit = 0,
    bool reverseSort = false,
  }) {
    return AllCartsProvider(
      limit: limit,
      reverseSort: reverseSort,
    );
  }

  @override
  AllCartsProvider getProviderOverride(
    covariant AllCartsProvider provider,
  ) {
    return call(
      limit: provider.limit,
      reverseSort: provider.reverseSort,
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
  String? get name => r'allCartsProvider';
}

/// See also [allCarts].
class AllCartsProvider extends AutoDisposeFutureProvider<List<Cart>> {
  /// See also [allCarts].
  AllCartsProvider({
    int limit = 0,
    bool reverseSort = false,
  }) : this._internal(
          (ref) => allCarts(
            ref as AllCartsRef,
            limit: limit,
            reverseSort: reverseSort,
          ),
          from: allCartsProvider,
          name: r'allCartsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$allCartsHash,
          dependencies: AllCartsFamily._dependencies,
          allTransitiveDependencies: AllCartsFamily._allTransitiveDependencies,
          limit: limit,
          reverseSort: reverseSort,
        );

  AllCartsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.limit,
    required this.reverseSort,
  }) : super.internal();

  final int limit;
  final bool reverseSort;

  @override
  Override overrideWith(
    FutureOr<List<Cart>> Function(AllCartsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AllCartsProvider._internal(
        (ref) => create(ref as AllCartsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        limit: limit,
        reverseSort: reverseSort,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Cart>> createElement() {
    return _AllCartsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AllCartsProvider &&
        other.limit == limit &&
        other.reverseSort == reverseSort;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);
    hash = _SystemHash.combine(hash, reverseSort.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AllCartsRef on AutoDisposeFutureProviderRef<List<Cart>> {
  /// The parameter `limit` of this provider.
  int get limit;

  /// The parameter `reverseSort` of this provider.
  bool get reverseSort;
}

class _AllCartsProviderElement
    extends AutoDisposeFutureProviderElement<List<Cart>> with AllCartsRef {
  _AllCartsProviderElement(super.provider);

  @override
  int get limit => (origin as AllCartsProvider).limit;
  @override
  bool get reverseSort => (origin as AllCartsProvider).reverseSort;
}

String _$singleCartHash() => r'38b90a0958468f7add68c133ea82c421ae1d75e5';

/// See also [singleCart].
@ProviderFor(singleCart)
const singleCartProvider = SingleCartFamily();

/// See also [singleCart].
class SingleCartFamily extends Family<AsyncValue<Cart>> {
  /// See also [singleCart].
  const SingleCartFamily();

  /// See also [singleCart].
  SingleCartProvider call(
    int cartId,
  ) {
    return SingleCartProvider(
      cartId,
    );
  }

  @override
  SingleCartProvider getProviderOverride(
    covariant SingleCartProvider provider,
  ) {
    return call(
      provider.cartId,
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
  String? get name => r'singleCartProvider';
}

/// See also [singleCart].
class SingleCartProvider extends AutoDisposeFutureProvider<Cart> {
  /// See also [singleCart].
  SingleCartProvider(
    int cartId,
  ) : this._internal(
          (ref) => singleCart(
            ref as SingleCartRef,
            cartId,
          ),
          from: singleCartProvider,
          name: r'singleCartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleCartHash,
          dependencies: SingleCartFamily._dependencies,
          allTransitiveDependencies:
              SingleCartFamily._allTransitiveDependencies,
          cartId: cartId,
        );

  SingleCartProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cartId,
  }) : super.internal();

  final int cartId;

  @override
  Override overrideWith(
    FutureOr<Cart> Function(SingleCartRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SingleCartProvider._internal(
        (ref) => create(ref as SingleCartRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cartId: cartId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Cart> createElement() {
    return _SingleCartProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SingleCartProvider && other.cartId == cartId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cartId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SingleCartRef on AutoDisposeFutureProviderRef<Cart> {
  /// The parameter `cartId` of this provider.
  int get cartId;
}

class _SingleCartProviderElement extends AutoDisposeFutureProviderElement<Cart>
    with SingleCartRef {
  _SingleCartProviderElement(super.provider);

  @override
  int get cartId => (origin as SingleCartProvider).cartId;
}

String _$cartsByUserHash() => r'46e3d1ab7d73887f99f0add17cdf6d47c94868a9';

/// See also [cartsByUser].
@ProviderFor(cartsByUser)
const cartsByUserProvider = CartsByUserFamily();

/// See also [cartsByUser].
class CartsByUserFamily extends Family<AsyncValue<List<Cart>>> {
  /// See also [cartsByUser].
  const CartsByUserFamily();

  /// See also [cartsByUser].
  CartsByUserProvider call(
    int userId,
  ) {
    return CartsByUserProvider(
      userId,
    );
  }

  @override
  CartsByUserProvider getProviderOverride(
    covariant CartsByUserProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'cartsByUserProvider';
}

/// See also [cartsByUser].
class CartsByUserProvider extends AutoDisposeFutureProvider<List<Cart>> {
  /// See also [cartsByUser].
  CartsByUserProvider(
    int userId,
  ) : this._internal(
          (ref) => cartsByUser(
            ref as CartsByUserRef,
            userId,
          ),
          from: cartsByUserProvider,
          name: r'cartsByUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$cartsByUserHash,
          dependencies: CartsByUserFamily._dependencies,
          allTransitiveDependencies:
              CartsByUserFamily._allTransitiveDependencies,
          userId: userId,
        );

  CartsByUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final int userId;

  @override
  Override overrideWith(
    FutureOr<List<Cart>> Function(CartsByUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CartsByUserProvider._internal(
        (ref) => create(ref as CartsByUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Cart>> createElement() {
    return _CartsByUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CartsByUserProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CartsByUserRef on AutoDisposeFutureProviderRef<List<Cart>> {
  /// The parameter `userId` of this provider.
  int get userId;
}

class _CartsByUserProviderElement
    extends AutoDisposeFutureProviderElement<List<Cart>> with CartsByUserRef {
  _CartsByUserProviderElement(super.provider);

  @override
  int get userId => (origin as CartsByUserProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
