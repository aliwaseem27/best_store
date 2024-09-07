import '../../models/enums.dart';
import 'image_strings.dart';

class AppConfigs {
  static const List<Map<String, dynamic>> categories = [
    {"title": "Sports", "image": ImageStrings.sportIcon, "category": ProductCategory.SPORTS_ACCESSORIES},
    {"title": "Clothing", "image": ImageStrings.clothIcon, "category": ProductCategory.WOMENS_DRESSES},
    {"title": "Shoes", "image": ImageStrings.shoeIcon, "category": ProductCategory.MENS_SHOES},
    {"title": "Cosmetics", "image": ImageStrings.cosmeticsIcon, "category": ProductCategory.BEAUTY},
    {"title": "Animals", "image": ImageStrings.animalIcon, "category": ProductCategory.GROCERIES},
    {"title": "Toys", "image": ImageStrings.toyIcon, "category": ProductCategory.SUNGLASSES},
    {"title": "Furniture", "image": ImageStrings.furnitureIcon, "category": ProductCategory.FURNITURE},
    {"title": "Jewelery", "image": ImageStrings.jeweleryIcon, "category": ProductCategory.WOMENS_JEWELLERY},
    {"title": "Electronics", "image": ImageStrings.electronicsIcon, "category": ProductCategory.SMARTPHONES},
  ];
}