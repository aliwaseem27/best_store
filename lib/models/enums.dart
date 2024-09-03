enum Category {
  ELECTRONICS,
  JEWELERY,
  MEN_S_CLOTHING,
  WOMEN_S_CLOTHING,
}

extension CategoryExtension on Category {
  static const Map<Category, String> _toJson = {
    Category.ELECTRONICS: 'electronics',
    Category.JEWELERY: 'jewelery',
    Category.MEN_S_CLOTHING: "men's clothing",
    Category.WOMEN_S_CLOTHING: "women's clothing",
  };

  static const Map<String, Category> _fromJson = {
    'electronics': Category.ELECTRONICS,
    'jewelery': Category.JEWELERY,
    "men's clothing": Category.MEN_S_CLOTHING,
    "women's clothing": Category.WOMEN_S_CLOTHING,
  };

  String customName() => _toJson[this]!;

  static String toJson(Category category) => _toJson[category]!;

  static Category fromJson(String json) => _fromJson[json]!;
}
