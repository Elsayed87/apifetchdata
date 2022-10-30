import 'package:api_test/models/cart_model.dart';

class TotalCarts {
  final List<Carts> totalCarts;

  TotalCarts({required this.totalCarts});

  factory TotalCarts.fromJson(json) {
    return TotalCarts(totalCarts: getTotalCartsList(json['carts']));
  }
  static List<Carts> getTotalCartsList(List<dynamic> list) {
    List<Carts> totalCartsList = list.map((e) => Carts.fromJson(e)).toList();
    return totalCartsList;
  }
}
