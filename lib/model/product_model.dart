class Product {
  final String imgSvg;
  final num fav;
  final String name;
  final num price;
  final num offert;

  Product(
      {required this.price,
      required this.name,
      required this.offert,
      required this.imgSvg,
      required this.fav});

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
        name: map['name'] as String,
        offert: map['offert'] as num,
        imgSvg: map['imgSvg'] as String,
        fav: map['fav'] as num,
        price: map['price'] as num);
  }

  static List<Product> fromList(List<Map<String, dynamic>> list) {
    return list.map((map) => Product.fromMap(map)).toList();
  }
}
