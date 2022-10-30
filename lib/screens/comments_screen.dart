import 'package:api_test/models/comments_model.dart';
import 'package:api_test/sevices/comment_service.dart';
import 'package:flutter/material.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  CommentService comment = CommentService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<CommentsModel>>(
          future: comment.getCommentServise(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data!.length);
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, i) {
                    return Card(
                      margin: EdgeInsets.all(16.0),
                      color: Colors.red.withOpacity(.2),
                      child: Column(children: [
                        Text(
                          '${snapshot.data![i].user.id}',
                          style: TextStyle(fontSize: 22),
                        ),
                      ]),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          })),
    );
  }
}
