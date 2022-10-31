class FinalDataUserModel {
  final List<DataUserModel> dataList;

  FinalDataUserModel({required this.dataList});
  factory FinalDataUserModel.fromJson(json) {
    return FinalDataUserModel(dataList: getList(json));
  }
  static List<DataUserModel> getList(List<dynamic> list) {
    List<DataUserModel> data =
        list.map((e) => DataUserModel.fromJson(e)).toList();
    return data;
  }
}

class DataUserModel {
  final int id;
  final String name;
  final String email;
  final String gender;
  final String status;

  DataUserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.gender,
      required this.status});
  factory DataUserModel.fromJson(json) {
    return DataUserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        gender: json['gender'],
        status: json['status']);
  }
}
