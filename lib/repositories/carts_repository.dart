import 'dart:convert';

import 'package:best_store/utils/network_service.dart';

import '../models/cart_model.dart';
import '../utils/endpoints.dart';

class CartsRepository {
  final NetworkService networkService;

  CartsRepository({required this.networkService});

  Future<List<Cart>> getAllCarts({int limit = 0, bool reverseSort = false}) async {
    String url = Endpoints.carts;
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
    final carts = <Cart>[];
    json.forEach((e) {
      carts.add(Cart.fromJson(e));
    });
    return carts;
  }

  Future<Cart> getSingleCart(int cartId) async {
    final res = await networkService.getRequest('${Endpoints.carts}/$cartId');
    final json = jsonDecode(res.body);
    return Cart.fromJson(json);
  }

  Future<void> updateCart(int cartId, Cart cart) async {
    final body = jsonEncode(cart.toJson());
    await networkService.putRequest('${Endpoints.carts}/$cartId', body as Map<String, dynamic>);
  }

  Future<List<Cart>> getCartsInDateRange({required String startDate, required String endDate}) async {
    final res = await networkService.getRequest('${Endpoints.carts}/?startdate=$startDate&enddate=$endDate');
    final json = jsonDecode(res.body);
    final carts = <Cart>[];
    json.forEach((e) {
      carts.add(Cart.fromJson(e));
    });
    return carts;
  }

  Future<List<Cart>> getCartsByUser(int userId) async {
    final res = await networkService.getRequest('${Endpoints.products}/user/$userId');
    final json = jsonDecode(res.body);
    final carts = <Cart>[];
    json.forEach((e) {
      carts.add(Cart.fromJson(e));
    });
    return carts;
  }

  Future<void> addNewCart(Cart cart) async {
    final body = jsonEncode(cart.toJson());
    await networkService.postRequest(Endpoints.carts, body as Map<String, dynamic>);
  }

  Future<void> deleteCart(int cartId) async {
    await networkService.deleteRequest('${Endpoints.carts}/$cartId');
  }
}
