import 'dart:convert';

import 'package:api_test/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const ApiUrl = 'https://dummyjson.com/products';

class ProductService {
  Future<List<dynamic>> getAllProductService() async {
    http.Response response = await http.get(Uri.parse(ApiUrl));
    var map = jsonDecode(response.body);
    var data = map['products'] as List<dynamic>;
    // print('${data[0]['title']}');

    return data;
  }
}

// Future<List<dynamic>> getAllProductService() async {
//   http.Response response = await http.get(Uri.parse(ApiUrl));
//   Map<String, dynamic> map = jsonDecode(response.body);
//   print(map["products"]);
//   var data = map["products"];

//   return data;

// }
