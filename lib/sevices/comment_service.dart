import 'dart:convert';

import 'package:api_test/models/comments_model.dart';
import 'package:http/http.dart' as http;

const APIURL = 'https://dummyjson.com/comments';

class CommentService {
  Future<List<CommentsModel>> getCommentServise() async {
    http.Response response = await http.get(Uri.parse(APIURL));
    var jsonDecoded = jsonDecode(response.body);
    FinalCommentsModel data = FinalCommentsModel.fromJson(jsonDecoded);

    print(data.commentList);
    return data.commentList;
  }
}
