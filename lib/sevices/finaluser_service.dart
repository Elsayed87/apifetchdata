import 'dart:convert';

import 'package:api_test/models/reqres_user_model.dart';
import 'package:http/http.dart' as http;

const ApiUrl = 'https://reqres.in/api/users';

class FinalUserService {
  Future<List<ReqresUserModel>> getService() async {
    http.Response response = await http.get(Uri.parse(ApiUrl));
    var json = jsonDecode(response.body);
    FinalUserModel data = FinalUserModel.fromJson(json);
    return data.finalDataList;
  }
}
