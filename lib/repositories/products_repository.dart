import 'dart:convert';

import 'package:best_store/utils/endpoints.dart';
import 'package:best_store/utils/network_service.dart';

import '../models/product_model.dart';

class ProductsRepository {
  final NetworkService networkService;

  ProductsRepository({required this.networkService});

  Future<List<Product>> getAllProducts({int limit = 0, bool reverseSort = false}) async {
    String url = Endpoints.products;
    if (limit > 0 || reverseSort) {
      url += '?';
      if (limit > 0) {
        url += 'limit=$limit';
      }
      if (reverseSort) {
        url += '&sort=desc';
      }
    }

    final res = await networkService.getRequest(url);
    final json = jsonDecode(res.body);
    final products = <Product>[];
    json.forEach((e) {
      products.add(Product.fromJson(e));
    });
    return products;
  }

  Future<Product> getSingleProduct(int productId) async {
    final res = await networkService.getRequest('${Endpoints.products}/$productId');
    final json = jsonDecode(res.body);
    return Product.fromJson(json);
  }

  Future<List<Product>> getProductsByCategory(String category) async {
    final res = await networkService.getRequest('${Endpoints.products}/category/$category');
    final json = jsonDecode(res.body);
    final products = <Product>[];
    json.forEach((e) {
      products.add(Product.fromJson(e));
    });
    return products;
  }

  Future<void> addNewProduct(Product product) async {
    final body = jsonEncode(product.toJson());
    await networkService.postRequest(Endpoints.products, body as Map<String, dynamic>);
  }

  Future<void> updateProduct(int productId, Product product) async {
    final body = jsonEncode(product.toJson());
    await networkService.putRequest('${Endpoints.products}/$productId', body as Map<String, dynamic>);
  }

  Future<void> deleteProduct(int productId) async {
    await networkService.deleteRequest('${Endpoints.products}/$productId');
  }

  Future<List<String>> getAllCategories() async {
    final res = await networkService.getRequest(Endpoints.categories);
    final json = jsonDecode(res.body);
    final categories = <String>[];
    json.forEach((e) {
      categories.add(e);
    });
    return categories;
  }
}
