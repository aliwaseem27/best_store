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
enum Category { BEAUTY, FRAGRANCES, FURNITURE, GROCERIES }

final categoryValues = EnumValues({
  "beauty": Category.BEAUTY,
  "fragrances": Category.FRAGRANCES,
  "furniture": Category.FURNITURE,
  "groceries": Category.GROCERIES,
});

extension CategoryExtension on Category {
  String toJson() {
    return categoryValues.reverse[this]!;
  }

  static Category fromJson(String json) {
    return categoryValues.map[json]!;
  }
}

Category categoryFromJson(String json) => CategoryExtension.fromJson(json);

String categoryToJson(Category category) => category.toJson();

// AvialabilityStatus
enum AvailabilityStatus { IN_STOCK, LOW_STOCK }

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
