import 'dart:convert';

import 'package:api_test/models/user_model.dart';
import 'package:http/http.dart' as http;

const ApiUrl = 'https://jsonplaceholder.typicode.com/users';

class UserServices {
  Future<List<UserModel>> getUserServices() async {
    http.Response response = await http.get(Uri.parse(ApiUrl));
    List<UserModel> userListData = [];

    if (response.statusCode == 200) {
      try {
        List<dynamic> userList = jsonDecode(response.body);

        for (int i = 0; i < userList.length; i++) {
          userListData.add(UserModel.fromJson(userList[i]));
        }
      } catch (e) {
        print(e.toString());
      }
    } else {
      print('there was error on ${response.statusCode}');
    }
    // print(userListData[0].phone.toString());
    return userListData;
  }
}
