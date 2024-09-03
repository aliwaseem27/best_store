import 'package:best_store/models/product_model.dart';
import 'package:best_store/providers/network_service_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repositories/products_repository.dart';

part "products_provider.g.dart";

@riverpod
ProductsRepository productsRepository(ProductsRepositoryRef ref) {
  final networkService = ref.watch(networkServiceProvider);
  return ProductsRepository(networkService: networkService);
}

@riverpod
Future<List<Product>> allProducts(AllProductsRef ref, {int limit = 0, bool reverseSort = false}) {
  final repository = ref.watch(productsRepositoryProvider);
  return repository.getAllProducts(limit: limit, reverseSort: reverseSort);
}

@riverpod
Future<Product> singleProduct(SingleProductRef ref, int productId) {
  final repository = ref.watch(productsRepositoryProvider);
  return repository.getSingleProduct(productId);
}

@riverpod
Future<List<Product>> productsByCategory(ProductsByCategoryRef ref, String category) {
  final repository = ref.watch(productsRepositoryProvider);
  return repository.getProductsByCategory(category);
}

@riverpod
Future<List<String>> allCategories(AllCategoriesRef ref) {
  final repository = ref.watch(productsRepositoryProvider);
  return repository.getAllCategories();
}
