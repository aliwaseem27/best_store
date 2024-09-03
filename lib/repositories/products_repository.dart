import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class ProductsRepository {
  Future<void> getAllProducts() async {
    final res = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    final json = jsonDecode(res.body);
    json.forEach((e) => print(Product.fromJson(e)));
  }

  Future<void> getSingleProduct() async {}

  Future<void> getProductsByCategory() async {}

  Future<void> addNewProduct() async {}

  Future<void> updateProduct() async {}

  Future<void> deleteProduct() async {}

  Future<void> getAllCategories() async {}
}
