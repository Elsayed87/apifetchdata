import 'package:api_test/models/product_model.dart';

class Carts {
  final int id;
  final int total;
  final int discountedTotal;
  final int userId;
  final int totalProducts;
  final int totalQuantity;
  final List<ProductDumy> productDumy;

  Carts(
      {required this.id,
      required this.total,
      required this.discountedTotal,
      required this.userId,
      required this.totalProducts,
      required this.totalQuantity,
      required this.productDumy});
  factory Carts.fromJson(json) {
    return Carts(
        id: json['id'],
        total: json['total'],
        discountedTotal: json['discountedTotal'],
        userId: json['userId'],
        totalProducts: json['totalProducts'],
        totalQuantity: json['totalQuantity'],
        productDumy: getList(json['products']));
  }

  static List<ProductDumy> getList(List<dynamic> list) {
    List<ProductDumy> productList =
        list.map((e) => ProductDumy.fromJson(e)).toList();
    return productList;
  }
}
