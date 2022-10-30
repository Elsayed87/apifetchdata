import 'dart:convert';

import 'package:api_test/models/post_model.dart';
import 'package:http/http.dart' as http;

const APIURL = 'https://dummyjson.com/posts';

class PostService {
  Future<List<PostModel>> getPost() async {
    http.Response response = await http.get(Uri.parse(APIURL));
    var jsonDecoded = jsonDecode(response.body);
    FinalPostModelList post = FinalPostModelList.fromJson(jsonDecoded);
    print(post.finalList[0].id);
    return post.finalList;
  }
}
