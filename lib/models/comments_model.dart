import 'package:http/http.dart';

class FinalCommentsModel {
  final List<CommentsModel> commentList;

  FinalCommentsModel({required this.commentList});
  factory FinalCommentsModel.fromJson(json) {
    return FinalCommentsModel(
        commentList: getListFinalComments(json['comments']));
  }
  static List<CommentsModel> getListFinalComments(List<dynamic> list) {
    List<CommentsModel> finalList =
        list.map((e) => CommentsModel.fromJson(e)).toList();
    return finalList;
  }
}

class CommentsModel {
  final int id;
  final String body;
  final int postId;
  final UserModel user;

  CommentsModel(
      {required this.id,
      required this.body,
      required this.postId,
      required this.user});
  factory CommentsModel.fromJson(json) {
    return CommentsModel(
        id: json['id'],
        body: json['body'],
        postId: json['postId'],
        user: UserModel.fromJson(json['user']));
  }
}

class UserModel {
  final int id;
  final String username;

  UserModel({required this.id, required this.username});
  factory UserModel.fromJson(json) {
    return UserModel(id: json['id'], username: json['username']);
  }
}


// {
// "id": 1,
// "body": "This is some awesome thinking!",
// "postId": 100,
// "user": {
// "id": 63,
// "username": "eburras1q"
// }
// },