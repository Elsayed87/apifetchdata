class ProModel {
  final List<ProductsModel> productsModel;

  ProModel({required this.productsModel});
  factory ProModel.fromJson(json) {
    var list = json['products'] as List;
    List<ProductsModel> productList =
        list.map((i) => ProductsModel.fromJson(i)).toList();
    return ProModel(productsModel: productList);
  }
}

class ProductsModel {
  int? id;
  String? title;
  String? description;
  int? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;

  ProductsModel(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail});
  factory ProductsModel.fromJson(json) {
    return ProductsModel(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        price: json['price'],
        discountPercentage: json['discountPercentage'],
        rating: json['rating'],
        stock: json['stock'],
        brand: json['brand'],
        category: json['category'],
        thumbnail: json['thumbnail']);
  }
}
