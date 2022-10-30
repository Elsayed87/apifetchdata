class FinalUserModel {
  final List<ReqresUserModel> finalDataList;

  FinalUserModel({required this.finalDataList});
  factory FinalUserModel.fromJson(json) {
    return FinalUserModel(finalDataList: getList(json['data']));
  }
  static List<ReqresUserModel> getList(List<dynamic> list) {
    List<ReqresUserModel> data =
        list.map((e) => ReqresUserModel.fromJson(e)).toList();
    return data;
  }
}

class ReqresUserModel {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  ReqresUserModel(
      {required this.id,
      required this.email,
      required this.first_name,
      required this.last_name,
      required this.avatar});
  factory ReqresUserModel.fromJson(json) {
    return ReqresUserModel(
        id: json['id'],
        email: json['email'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        avatar: json['avatar']);
  }
}
// {
// "id": 1,
// "email": "george.bluth@reqres.in",
// "first_name": "George",
// "last_name": "Bluth",
// "avatar": "https://reqres.in/img/faces/1-image.jpg"
// },