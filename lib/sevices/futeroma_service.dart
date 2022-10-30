import 'dart:convert';

import 'package:api_test/models/futeroma_model.dart';
import 'package:http/http.dart' as http;

const ApiUrl = 'https://api.sampleapis.com/futurama/info';

class FuturamaService {
  Future<List<FuteromaModel>> getFuturamaService() async {
    http.Response response = await http.get(Uri.parse(ApiUrl));
    var json = jsonDecode(response.body);
    FinalFuterModel data = FinalFuterModel.fromJson(json);
    print(data.futerList);
    return data.futerList;
  }
}
