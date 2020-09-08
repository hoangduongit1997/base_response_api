import 'package:base_response_api/models/base_object_model.dart';
import 'package:base_response_api/models/product_model.dart';

class Order extends BaseObject<Order> {
  String orderId;
  double price;
  List<Product> items;

  Order({this.orderId, this.price, this.items});

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        orderId: json["orderId"],
        price: double.parse(json["price"].toString()),
        items: parseProductList(json),
      );

  static List<Product> parseProductList(map) {
    var list = map['items'] as List;
    return list.map((product) => Product.fromJson(product)).toList();
  }

  @override
  Order fromJson(json) {
    return Order.fromJson(json);
  }
}
