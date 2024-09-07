import 'package:flutter/foundation.dart';

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

// CATEGORIES
enum ProductCategory {
  BEAUTY,
  FRAGRANCES,
  FURNITURE,
  GROCERIES,
  HOME_DECORATION,
  KITCHEN_ACCESSORIES,
  LAPTOPS,
  MENS_SHIRTS,
  MENS_SHOES,
  MENS_WATCHES,
  MOBILE_ACCESSORIES,
  MOTORCYCLE,
  SKIN_CARE,
  SMARTPHONES,
  SPORTS_ACCESSORIES,
  SUNGLASSES,
  TABLETS,
  TOPS,
  VEHICLE,
  WOMENS_BAGS,
  WOMENS_DRESSES,
  WOMENS_JEWELLERY,
  WOMENS_SHOES,
  WOMENS_WATCHES
}

final productCategoryValues = EnumValues({
  "beauty": ProductCategory.BEAUTY,
  "fragrances": ProductCategory.FRAGRANCES,
  "furniture": ProductCategory.FURNITURE,
  "groceries": ProductCategory.GROCERIES,
  "home-decoration": ProductCategory.HOME_DECORATION,
  "kitchen-accessories": ProductCategory.KITCHEN_ACCESSORIES,
  "laptops": ProductCategory.LAPTOPS,
  "mens-shirts": ProductCategory.MENS_SHIRTS,
  "mens-shoes": ProductCategory.MENS_SHOES,
  "mens-watches": ProductCategory.MENS_WATCHES,
  "mobile-accessories": ProductCategory.MOBILE_ACCESSORIES,
  "motorcycle": ProductCategory.MOTORCYCLE,
  "skin-care": ProductCategory.SKIN_CARE,
  "smartphones": ProductCategory.SMARTPHONES,
  "sports-accessories": ProductCategory.SPORTS_ACCESSORIES,
  "sunglasses": ProductCategory.SUNGLASSES,
  "tablets": ProductCategory.TABLETS,
  "tops": ProductCategory.TOPS,
  "vehicle": ProductCategory.VEHICLE,
  "womens-bags": ProductCategory.WOMENS_BAGS,
  "womens-dresses": ProductCategory.WOMENS_DRESSES,
  "womens-jewellery": ProductCategory.WOMENS_JEWELLERY,
  "womens-shoes": ProductCategory.WOMENS_SHOES,
  "womens-watches": ProductCategory.WOMENS_WATCHES,
});

extension ProductCategoryExtension on ProductCategory {
  String toJson() {
    return productCategoryValues.reverse[this]!;
  }

  static ProductCategory fromJson(String json) {
    return productCategoryValues.map[json]!;
  }
}

ProductCategory productCategoryFromJson(String json) => ProductCategoryExtension.fromJson(json);

String productCategoryToJson(ProductCategory productCategory) => productCategory.toJson();

// AvialabilityStatus
enum AvailabilityStatus { IN_STOCK, LOW_STOCK, OUT_OF_STOCK }

extension AvailabilityStatusExtension on AvailabilityStatus {
  String toJson() {
    return availabilityStatusValues.reverse[this]!;
  }

  static AvailabilityStatus fromJson(String json) {
    return availabilityStatusValues.map[json]!;
  }
}

final availabilityStatusValues = EnumValues({
  "In Stock": AvailabilityStatus.IN_STOCK,
  "Low Stock": AvailabilityStatus.LOW_STOCK,
  "Out of Stock": AvailabilityStatus.OUT_OF_STOCK
});

AvailabilityStatus availabilityStatusFromJson(String json) => AvailabilityStatusExtension.fromJson(json);

String availabilityStatusToJson(AvailabilityStatus status) => status.toJson();

// ReturnPolicy
enum ReturnPolicy {
  NO_RETURN_POLICY,
  THE_30_DAYS_RETURN_POLICY,
  THE_60_DAYS_RETURN_POLICY,
  THE_7_DAYS_RETURN_POLICY,
  THE_90_DAYS_RETURN_POLICY
}

extension ReturnPolicyExtension on ReturnPolicy {
  String toJson() {
    return returnPolicyValues.reverse[this]!;
  }

  static ReturnPolicy fromJson(String json) {
    return returnPolicyValues.map[json]!;
  }
}

final returnPolicyValues = EnumValues({
  "No return policy": ReturnPolicy.NO_RETURN_POLICY,
  "30 days return policy": ReturnPolicy.THE_30_DAYS_RETURN_POLICY,
  "60 days return policy": ReturnPolicy.THE_60_DAYS_RETURN_POLICY,
  "7 days return policy": ReturnPolicy.THE_7_DAYS_RETURN_POLICY,
  "90 days return policy": ReturnPolicy.THE_90_DAYS_RETURN_POLICY
});

ReturnPolicy returnPolicyFromJson(String json) => ReturnPolicyExtension.fromJson(json);

String returnPolicyToJson(ReturnPolicy policy) => policy.toJson();

// Shipping Information
enum ShippingInformation {
  SHIPS_IN_12_BUSINESS_DAYS,
  SHIPS_IN_1_MONTH,
  SHIPS_IN_1_WEEK,
  SHIPS_IN_2_WEEKS,
  SHIPS_IN_35_BUSINESS_DAYS,
  SHIPS_OVERNIGHT
}

final shippingInformationValues = EnumValues({
  "Ships in 1-2 business days": ShippingInformation.SHIPS_IN_12_BUSINESS_DAYS,
  "Ships in 1 month": ShippingInformation.SHIPS_IN_1_MONTH,
  "Ships in 1 week": ShippingInformation.SHIPS_IN_1_WEEK,
  "Ships in 2 weeks": ShippingInformation.SHIPS_IN_2_WEEKS,
  "Ships in 3-5 business days": ShippingInformation.SHIPS_IN_35_BUSINESS_DAYS,
  "Ships overnight": ShippingInformation.SHIPS_OVERNIGHT
});

extension ShippingInformationExtension on ShippingInformation {
  String toJson() {
    return shippingInformationValues.reverse[this]!;
  }

  static ShippingInformation fromJson(String json) {
    return shippingInformationValues.map[json]!;
  }
}

ShippingInformation shippingInformationFromJson(String json) => ShippingInformationExtension.fromJson(json);

String shippingInformationToJson(ShippingInformation shippingInformation) => shippingInformation.toJson();

// Warranty Information
enum WarrantyInformation {
  LIFETIME_WARRANTY,
  NO_WARRANTY,
  THE_1_MONTH_WARRANTY,
  THE_1_WEEK_WARRANTY,
  THE_1_YEAR_WARRANTY,
  THE_2_YEAR_WARRANTY,
  THE_3_MONTHS_WARRANTY,
  THE_3_YEAR_WARRANTY,
  THE_5_YEAR_WARRANTY,
  THE_6_MONTHS_WARRANTY
}

final warrantyInformationValues = EnumValues({
  "Lifetime warranty": WarrantyInformation.LIFETIME_WARRANTY,
  "No warranty": WarrantyInformation.NO_WARRANTY,
  "1 month warranty": WarrantyInformation.THE_1_MONTH_WARRANTY,
  "1 week warranty": WarrantyInformation.THE_1_WEEK_WARRANTY,
  "1 year warranty": WarrantyInformation.THE_1_YEAR_WARRANTY,
  "2 year warranty": WarrantyInformation.THE_2_YEAR_WARRANTY,
  "3 months warranty": WarrantyInformation.THE_3_MONTHS_WARRANTY,
  "3 year warranty": WarrantyInformation.THE_3_YEAR_WARRANTY,
  "5 year warranty": WarrantyInformation.THE_5_YEAR_WARRANTY,
  "6 months warranty": WarrantyInformation.THE_6_MONTHS_WARRANTY
});

extension WarrantyInformationExtension on WarrantyInformation {
  String toJson() {
    return warrantyInformationValues.reverse[this]!;
  }

  static WarrantyInformation fromJson(String json) {
    return warrantyInformationValues.map[json]!;
  }
}

WarrantyInformation warrantyInformationFromJson(String json) => WarrantyInformationExtension.fromJson(json);

String warrantyInformationToJson(WarrantyInformation warrantyInformation) => warrantyInformation.toJson();
