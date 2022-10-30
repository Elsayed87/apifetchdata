class ProductDumy {
  final int id;
  final String title;
  final int price;
  final int quantity;
  final int total;
  final num discountPercentage;
  final int discountedPrice;

  ProductDumy(
      {required this.id,
      required this.title,
      required this.price,
      required this.quantity,
      required this.total,
      required this.discountPercentage,
      required this.discountedPrice});
  factory ProductDumy.fromJson(json) {
    return ProductDumy(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        quantity: json['quantity'],
        total: json['total'],
        discountPercentage: json['discountPercentage'],
        discountedPrice: json['discountedPrice']);
  }
}
