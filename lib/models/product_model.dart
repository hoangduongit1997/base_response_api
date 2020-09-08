class Product {
  String id;
  String name;
  int quantity;
  double price;

  Product({this.id, this.name, this.quantity, this.price});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        quantity: int.parse(json["quantity"].toString()),
        price: double.parse(json["price"].toString()),
      );
}
