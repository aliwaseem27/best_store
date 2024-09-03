import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/cart_model.dart';

class CartsRepository {
  Future<void> getAllCarts() async {
    final res = await http.get(Uri.parse("https://fakestoreapi.com/carts"));
    final json = jsonDecode(res.body);
    json.forEach((e) => print(Cart.fromJson(e)));
  }

  Future<void> getSingleCart() async {}

  Future<void> updateCart() async {}

  Future<void> getCartsInDateRange() async {}

  Future<void> getCartsByUser() async {}

  Future<void> addNewCart() async {}

  Future<void> deleteCart() async {}
}
