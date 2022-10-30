import 'dart:convert';

import 'package:api_test/models/dummy_user_model.dart';
import 'package:http/http.dart' as http;

const APIUrl = 'https://dummyjson.com/users';

class UserService {
  Future<List<DummyUser>> getListOfUser() async {
    http.Response response = await http.get(Uri.parse(APIUrl));
    var decodedJson = jsonDecode(response.body);
    TotalDummyListOfUser user = TotalDummyListOfUser.fromJson(decodedJson);
    //  print(user.finalUserList);
    return user.finalUserList;
  }
}
