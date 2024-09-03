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
Future<List<Product>> products(ref) async {
  final productsRepository = ref.watch(productsRepositoryProvider);
  final products = await productsRepository.getAllProducts(); //
  return products;
  // productsRepository
}
