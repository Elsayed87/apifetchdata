import 'dart:convert';

import 'package:api_test/models/coffee_model.dart';

import 'package:http/http.dart' as http;

const APIURL = 'https://api.sampleapis.com/coffee/hot';

class CoffeeService {
  Future<List<CoffeeModel>> getCoffeeServices() async {
    http.Response response = await http.get(Uri.parse(APIURL));
    var json = jsonDecode(response.body);
    FinalCoffeeModel data = FinalCoffeeModel.fromJson(json);
    print(data.coffeeList);
    return data.coffeeList;
  }
}
