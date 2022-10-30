class FinalPostModelList {
  final List<PostModel> finalList;

  FinalPostModelList({required this.finalList});
  factory FinalPostModelList.fromJson(json) {
    return FinalPostModelList(finalList: getFinalList(json['posts']));
  }
  static List<PostModel> getFinalList(List<dynamic> list) {
    List<PostModel> finalDataList =
        list.map((e) => PostModel.fromJson(e)).toList();
    return finalDataList;
  }
}

class PostModel {
  final int id;
  final String title;
  final String body;
  final int userId;
  final int reactions;
  final List<String> tagsList;

  PostModel(
      {required this.id,
      required this.title,
      required this.body,
      required this.userId,
      required this.reactions,
      required this.tagsList});
  factory PostModel.fromJson(json) {
    return PostModel(
        id: json['id'],
        title: json['title'],
        body: json['body'],
        userId: json['userId'],
        reactions: json['reactions'],
        tagsList: getList(json['tags']));
  }
  static List<String> getList(List<dynamic> list) {
    List<String> stringList = List.from(list);

    return stringList;
  }
}



// {
// "id": 1,
// "title": "His mother had always taught him",
// "body": "His mother had always taught him not to ever think of himself as better than others. He'd tried to live by this motto. He never looked down on those who were less fortunate or who had less money than him. But the stupidity of the group of people he was talking to made him change his mind.",
// "userId": 9,
// "tags": [
// "history",
// "american",
// "crime"
// ],
// "reactions": 2
// },