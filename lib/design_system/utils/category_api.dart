class CategoryApi {
  static List<Map<String, String>> getCategoryApi() {
    return [
      {
        "category": "Vegan",
        "imgSvg": "lib/design_system/assets/icons/vegan.svg"
      },
      {"category": "Meat", "imgSvg": "lib/design_system/assets/icons/meat.svg"},
      {
        "category": "Fruits",
        "imgSvg": "lib/design_system/assets/icons/fruits.svg"
      },
      {"category": "Milk", "imgSvg": "lib/design_system/assets/icons/milk.svg"},
      {"category": "Fish", "imgSvg": "lib/design_system/assets/icons/fish.svg"},
    ];
  }
}
