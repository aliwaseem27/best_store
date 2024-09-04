import 'package:best_store/models/cart_model.dart';
import 'package:best_store/providers/network_service_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repositories/carts_repository.dart';

part "carts_provider.g.dart";

@riverpod
CartsRepository cartsRepository(CartsRepositoryRef ref) {
  final networkService = ref.watch(networkServiceProvider);
  return CartsRepository(networkService: networkService);
}

@riverpod
Future<List<Cart>> allCarts(AllCartsRef ref, {int limit = 0, bool reverseSort = false}) {
  final repository = ref.watch(cartsRepositoryProvider);
  return repository.getAllCarts(limit: limit, reverseSort: reverseSort);
}

@riverpod
Future<Cart> singleCart(SingleCartRef ref, int cartId) {
  final repository = ref.watch(cartsRepositoryProvider);
  return repository.getSingleCart(cartId);
}

@riverpod
Future<List<Cart>> cartsByUser(CartsByUserRef ref, int userId) {
  final repository = ref.watch(cartsRepositoryProvider);
  return repository.getCartsByUser(userId);
}
