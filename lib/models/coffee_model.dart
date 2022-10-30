class FinalCoffeeModel {
  final List<CoffeeModel> coffeeList;

  FinalCoffeeModel({required this.coffeeList});
  factory FinalCoffeeModel.fromJson(json) {
    return FinalCoffeeModel(coffeeList: getMyList(json));
  }
  static List<CoffeeModel> getMyList(List<dynamic> list) {
    List<CoffeeModel> finalList =
        list.map((e) => CoffeeModel.fromJson(e)).toList();
    return finalList;
  }
}

class CoffeeModel {
  final String title;
  final String description;
  final String? image;
  final int id;
  // final List<String> ingredientsList;

  CoffeeModel({
    required this.title,
    required this.description,
    required this.image,
    required this.id,
    // required this.ingredientsList
  });
  factory CoffeeModel.fromJson(json) {
    return CoffeeModel(
      title: json['title'],
      description: json['description'],
      image: json['image'],
      id: int.parse(json['id'].toString()),
      //ingredientsList: getList(json['ingredients']),
    );
  }
  static List<String> getList(List<dynamic> list) {
    return List<String>.from(list);
  }
}
// {
// "title": "Black",
// "description": "Black coffee is as simple as it gets with ground coffee beans steeped in hot water, served warm. And if you want to sound fancy, you can call black coffee by its proper name: cafe noir.",
// "ingredients": [
// "Coffee"
// ],
// "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/A_small_cup_of_coffee.JPG/640px-A_small_cup_of_coffee.JPG",
// "id": 1
// },