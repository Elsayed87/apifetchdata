import 'dart:convert';

import 'package:api_test/models/quotes_model.dart';
import 'package:http/http.dart' as http;

const APIURL = 'https://dummyjson.com/quotes';

class QuoteService {
  Future<List<QuotesModel>> getQuotesService() async {
    http.Response response = await http.get(Uri.parse(APIURL));
    var json = jsonDecode(response.body);
    FinalQuotesModel data = FinalQuotesModel.fromJson(json);
    // print(data.quoteList);
    return data.quoteList;
  }
}
