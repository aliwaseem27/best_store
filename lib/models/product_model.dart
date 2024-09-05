import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';

part "product_model.freezed.dart";

part "product_model.g.dart";

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required int price,
    required String description,
    required List<String> images,
    required DateTime creationAt,
    required DateTime updatedAt,
    required Category category,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) => _$ProductFromJson(json);

}

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    @NameConverter() required Name name,
    required String image,
    required DateTime creationAt,
    required DateTime updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) => _$CategoryFromJson(json);

}

class NameConverter implements JsonConverter<Name, String> {
  const NameConverter();

  @override
  Name fromJson(String json) {
    return nameValues.map[json] ?? Name.MISCELLANEOUS;
  }

  @override
  String toJson(Name object) {
    return nameValues.reverse[object]!;
  }
}