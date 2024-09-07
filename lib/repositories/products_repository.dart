import 'dart:convert';

import 'package:best_store/models/enums.dart';
import 'package:best_store/utils/endpoints.dart';
import 'package:best_store/utils/network_service.dart';

import '../models/product_model.dart';

class ProductsRepository {
  final NetworkService networkService;

  ProductsRepository({required this.networkService});

  Future<ProductListInfo> getAllProducts({int limit = 0, int? skip}) async {
    String url = Endpoints.products;
    if (limit > 0 || skip != null) {
      url += '?';
      if (limit > 0) {
        url += 'limit=$limit';
      }
      if (skip != null) {
        url += '&skip=$skip';
      }
    }

    final res = await networkService.getRequest(url);
    final json = jsonDecode(res.body);
    // final jsonProducts = json["products"];
    // final products = <Product>[];
    // jsonProducts.forEach((e) {
    //   products.add(Product.fromJson(e));
    // });
    final productListInfo = ProductListInfo.fromJson(json);
    return productListInfo;
  }

  Future<Product> getSingleProduct(int productId) async {
    final res = await networkService.getRequest('${Endpoints.products}/$productId');
    final json = jsonDecode(res.body);
    return Product.fromJson(json);
  }

  Future<ProductListInfo> getProductsByCategory(ProductCategory category) async {
    final url = '${Endpoints.products}/category/${category.toJson()}';
    print (url);
    final res = await networkService.getRequest(url);
    final json = jsonDecode(res.body);
    final productListInfo = ProductListInfo.fromJson(json);
    print("------------------------");
    print(productListInfo);
    return productListInfo;
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
