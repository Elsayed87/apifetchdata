import 'dart:convert';

import 'package:api_test/models/cart_model.dart';
import 'package:api_test/models/total_carts_model.dart';
import 'package:http/http.dart' as http;

const BaseUrl = 'https://dummyjson.com/carts';

class CartsService {
  Future<TotalCarts> getCartsService() async {
    http.Response response = await http.get(Uri.parse(BaseUrl));
    var data = jsonDecode(response.body);
    TotalCarts total = TotalCarts.fromJson(data);
    //List<Carts> dataList = total.totalCarts;

    // print(total);
    return total;
  }
}
