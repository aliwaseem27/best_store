enum Name {
  CLOTHES,
  ELECTRONICS,
  FURNITURE,
  MISCELLANEOUS,
  SHOES
}

final nameValues = EnumValues({
  "Clothes": Name.CLOTHES,
  "Electronics": Name.ELECTRONICS,
  "Furniture": Name.FURNITURE,
  "Miscellaneous": Name.MISCELLANEOUS,
  "Shoes": Name.SHOES
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
