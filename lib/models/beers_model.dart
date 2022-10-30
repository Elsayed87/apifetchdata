import 'package:http/http.dart';

class FinalBeersModel {
  final List<BeersModel> beersModelList;

  FinalBeersModel({required this.beersModelList});
  factory FinalBeersModel.fromJson(json) {
    return FinalBeersModel(beersModelList: getList(json));
  }
  static List<BeersModel> getList(List<dynamic> list) {
    List<BeersModel> listData =
        list.map((e) => BeersModel.fromJson(e)).toList();
    return listData;
  }
}

class BeersModel {
  final String price;
  final String name;
  //final String image;
  final int id;
  final RatingModel ratingModel;

  BeersModel(
      {required this.price,
      required this.name,
      //  required this.image,
      required this.id,
      required this.ratingModel});
  factory BeersModel.fromJson(json) {
    return BeersModel(
        price: json['price'],
        name: json['name'],
        // image: json['image'],
        id: json['id'],
        ratingModel: RatingModel.fromJson(json['rating']));
  }
}

class RatingModel {
  final num average;
  final int reviews;

  RatingModel({required this.average, required this.reviews});
  factory RatingModel.fromJson(json) {
    return RatingModel(average: json['average'], reviews: json['reviews']);
  }
}


// {
// "price": "$16.99",
// "name": "Founders All Day IPA",
// "rating": {
// "average": 4.411243509154233,
// "reviews": 453
// },
// "image": "https://www.totalwine.com/media/sys_master/twmmedia/h00/h94/11891416367134.png",
// "id": 1
// },
