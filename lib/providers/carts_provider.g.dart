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
String _$cartsHash() => r'4d5716966c3418e9ae79ac8664533e6c7c2183b4';

/// See also [Carts].
@ProviderFor(Carts)
final cartsProvider = NotifierProvider<Carts, Cart>.internal(
  Carts.new,
  name: r'cartsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Carts = Notifier<Cart>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
