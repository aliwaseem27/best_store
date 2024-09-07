import 'package:best_store/models/enums.dart';
import 'package:best_store/models/product_model.dart';
import 'package:best_store/providers/network_service_provider.dart';
import 'package:flutter/foundation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repositories/products_repository.dart';

part "products_provider.g.dart";

@riverpod
ProductsRepository productsRepository(ProductsRepositoryRef ref) {
  final networkService = ref.watch(networkServiceProvider);
  return ProductsRepository(networkService: networkService);
}

@riverpod
class AllProducts extends _$AllProducts {
  @override
  Future<ProductListInfo> build() {
    final repository = ref.watch(productsRepositoryProvider);
    return repository.getAllProducts(limit: 10, skip: 2);
  }
}

@riverpod
class WishListProducts extends _$WishListProducts {
  @override
  ProductListInfo build() {
    return const ProductListInfo(products: [], total: 0, skip: 0, limit: 0);
  }

  void addProductToWishList(Product product) {
    state = state.copyWith(total: state.total + 1, products: [...state.products, product]);
  }

  void removeProductFromWishList(Product product) {
    state = state.copyWith(total: state.total - 1, products: state.products.where((p) => p != product).toList());
  }

  bool isProductInWishList(Product product) {
    return state.products.contains(product);
  }

  void toggleProductInWishList(Product product) {
    if (isProductInWishList(product)) {
      removeProductFromWishList(product);
    } else {
      addProductToWishList(product);
    }
  }

  void clearWishList() {
    state = state.copyWith(total: 0, products: []);
  }
}

@riverpod
Future<Product> singleProduct(SingleProductRef ref, int productId) {
  final repository = ref.watch(productsRepositoryProvider);
  return repository.getSingleProduct(productId);
}

@riverpod
Future<ProductListInfo> productsByCategory(ProductsByCategoryRef ref, ProductCategory category) {
  final repository = ref.watch(productsRepositoryProvider);
  return repository.getProductsByCategory(category);
}

@riverpod
Future<List<String>> allCategories(AllCategoriesRef ref) {
  final repository = ref.watch(productsRepositoryProvider);
  return repository.getAllCategories();
}
