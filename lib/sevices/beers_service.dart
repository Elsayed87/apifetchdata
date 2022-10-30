import 'dart:convert';

import 'package:api_test/models/beers_model.dart';
import 'package:http/http.dart' as http;

const APIURL = 'https://api.sampleapis.com/beers/ale';

class BeersService {
  Future<List<BeersModel>> getBeersServices() async {
    http.Response response = await http.get(Uri.parse(APIURL));
    var json = jsonDecode(response.body);
    FinalBeersModel data = FinalBeersModel.fromJson(json);
    //  print(data.beersModelList);
    return data.beersModelList;
  }
}
