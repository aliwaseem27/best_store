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
class Carts extends _$Carts {
  @override
  Cart build() {
    return const Cart(
      id: 1,
      products: <CartProduct>[],
      total: 0,
      discountedTotal: 0,
      userId: 1,
      totalProducts: 0,
      totalQuantity: 0,
    );
  }

  CartProduct? getProductById(int id) {
    return state.products.firstWhere((p) => p.id == id);
  }

  void addProduct(CartProduct product) {
    // final existingProduct = getProductById(product.id);
    print("-------------------------------- passed ---------");
    final existingProduct = null;

    if (existingProduct != null) {
      final updatedProducts = state.products.map((p) {
        return p.id == product.id ? p.copyWith(quantity: p.quantity + product.quantity) : p;
      }).toList();
      state = state.copyWith(products: updatedProducts);
    } else {
      final updatedProducts = [...state.products, product];
      state = state.copyWith(products: updatedProducts);
    }

    _recalculateCart();
  }

  void removeProduct(CartProduct product) {
    final updatedProducts = state.products.where((p) => p.id != product.id).toList();
    state = state.copyWith(products: updatedProducts);

    _recalculateCart();
  }

  void increaseProductQuantity(CartProduct product) {
    final updatedProducts = state.products.map((p) {
      return p.id == product.id ? p.copyWith(quantity: p.quantity + 1) : p;
    }).toList();

    state = state.copyWith(products: updatedProducts);

    _recalculateCart();
  }

  void decreaseProductQuantity(CartProduct product) {
    final updatedProducts = state.products.map((p) {
      if (p.id == product.id && p.quantity > 1) {
        return p.copyWith(quantity: p.quantity - 1);
      } else {
        return p;
      }
    }).toList();

    state = state.copyWith(products: updatedProducts);

    _recalculateCart();
  }

  void clearCart() {
    state = state.copyWith(
      products: <CartProduct>[],
      total: 0,
      discountedTotal: 0,
      totalProducts: 0,
      totalQuantity: 0,
    );
  }

  void _recalculateCart() {
    double totalPrice = 0;
    double discountedTotal = 0;
    int totalProducts = 0;
    int totalQuantity = 0;

    for (final product in state.products) {
      totalPrice += product.price * product.quantity;
      discountedTotal += product.discountedTotal * product.quantity;
      totalProducts += 1;
      totalQuantity += product.quantity;
    }

    state = state.copyWith(
      total: totalPrice,
      discountedTotal: discountedTotal,
      totalProducts: totalProducts,
      totalQuantity: totalQuantity,
    );
  }
}
