class Category {
  final String category;
  final String imgSvg;

  Category({
    required this.category,
    required this.imgSvg,
  });

  // Método para converter um Map<String, String> em uma instância de Category
  factory Category.fromMap(Map<String, String> map) {
    return Category(
      category: map['category'] ?? '',
      imgSvg: map['imgSvg'] ?? '',
    );
  }

  // Método para converter uma lista de Map<String, String> em uma lista de Category
  static List<Category> fromMapList(List<Map<String, String>> mapList) {
    return mapList.map((map) => Category.fromMap(map)).toList();
  }
}
