import 'package:freezed_annotation/freezed_annotation.dart';

part "cart_model.freezed.dart";
part "cart_model.g.dart";

@freezed
class Cart with _$Cart {
  const factory Cart({
    required int id,
    required int userId,
    required DateTime date,
    required List<CartProduct> products,
    required int v,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);
}

@freezed
class CartProduct with _$CartProduct {
  const factory CartProduct({
    required int productId,
    required int quantity,
  }) = _Product;

  factory CartProduct.fromJson(Map<String, Object?> json) => _$CartProductFromJson(json);
}
