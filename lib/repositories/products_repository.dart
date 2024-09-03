import 'dart:convert';

import 'package:best_store/utils/endpoints.dart';
import 'package:best_store/utils/network_service.dart';
import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class ProductsRepository {
  final NetworkService networkService;

  ProductsRepository({required this.networkService});

  Future<List<Product>> getAllProducts() async {
    final res = await networkService.getRequest(Endpoints.products);
    final json = jsonDecode(res.body);
    final products = <Product>[];
    json.forEach((e) {
      products.add(Product.fromJson(e));
    });
    return products;
  }

  Future<void> getSingleProduct() async {}

  Future<void> getProductsByCategory() async {}

  Future<void> addNewProduct() async {}

  Future<void> updateProduct() async {}

  Future<void> deleteProduct() async {}

  Future<void> getAllCategories() async {
    final res = await http.get(Uri.parse("https://fakestoreapi.com/products/categories"));
    final json = jsonDecode(res.body);
    print(json);
  }
}
