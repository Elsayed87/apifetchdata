import 'dart:convert';

import 'package:api_test/models/todos_model.dart';
import 'package:http/http.dart' as http;

const APIURL = 'https://dummyjson.com/todos';

class TodosService {
  Future<List<TodosModel>> getTodosServices() async {
    http.Response response = await http.get(Uri.parse(APIURL));
    var json = jsonDecode(response.body);
    FinalTodosModel data = FinalTodosModel.fromJson(json);
    print(data.todosList);
    return data.todosList;
  }
}
