import 'package:best_store/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "cart_model.freezed.dart";

part "cart_model.g.dart";

@freezed
class Cart with _$Cart {
  const factory Cart({
    required int id,
    required List<CartProduct> products,
    required double total,
    required double discountedTotal,
    required int userId,
    required int totalProducts,
    required int totalQuantity,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

@freezed
class CartProduct with _$CartProduct {
  const factory CartProduct({
    required int id,
    required String title,
    required double price,
    required int quantity,
    required double total,
    required double discountPercentage,
    required double discountedTotal,
    required String thumbnail,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) => _$CartProductFromJson(json);

  factory CartProduct.fromProduct(Product product) {
    return CartProduct(
      id: product.id,
      title: product.title,
      price: product.price,
      quantity: 1,
      total: product.price,
      discountPercentage: product.discountPercentage,
      discountedTotal: product.price * product.discountPercentage / 100,
      thumbnail: product.images.first,
    );
  }
}
