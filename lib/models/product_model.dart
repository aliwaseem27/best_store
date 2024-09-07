import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums.dart';

part "product_model.freezed.dart";

part "product_model.g.dart";

@freezed
class ProductListInfo with _$ProductListInfo {
  const factory ProductListInfo({
    required List<Product> products,
    required int total,
    required int skip,
    required int limit,
  }) = _ProductListInfo;

  factory ProductListInfo.fromJson(Map<String, dynamic> json) => _$ProductListInfoFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    @JsonKey(fromJson: productCategoryFromJson, toJson: productCategoryToJson) required ProductCategory category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required List<String> tags,
    String? brand,
    required String sku,
    required int weight,
    required Dimensions dimensions,
    @JsonKey(fromJson: warrantyInformationFromJson, toJson: warrantyInformationToJson)
    required WarrantyInformation warrantyInformation,
    @JsonKey(fromJson: shippingInformationFromJson, toJson: shippingInformationToJson)
    required ShippingInformation shippingInformation,
    @JsonKey(fromJson: availabilityStatusFromJson, toJson: availabilityStatusToJson)
    required AvailabilityStatus availabilityStatus,
    required List<Review> reviews,
    @JsonKey(fromJson: returnPolicyFromJson, toJson: returnPolicyToJson) required ReturnPolicy returnPolicy,
    required int minimumOrderQuantity,
    Meta? meta,
    required List<String> images,
    required String thumbnail,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    required double width,
    required double height,
    required double depth,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String barcode,
    required String qrCode,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    required int rating,
    required String comment,
    required DateTime date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
