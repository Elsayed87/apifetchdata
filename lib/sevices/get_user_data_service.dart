import 'dart:convert';

import 'package:api_test/models/data_user_model.dart';
import 'package:http/http.dart' as http;

const BaseUrl = 'https://gorest.co.in/public/v2/users';

class DataOfUser {
  Future<List<DataUserModel>> getAllUserData() async {
    http.Response response = await http.get(Uri.parse(BaseUrl));
    var json = jsonDecode(response.body);

    FinalDataUserModel data = FinalDataUserModel.fromJson(json);
    return data.dataList;
  }
}
