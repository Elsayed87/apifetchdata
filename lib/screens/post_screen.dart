import 'package:api_test/models/post_model.dart';
import 'package:api_test/sevices/post_service.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  PostService postService = PostService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<PostModel>>(
          future: postService.getPost(),
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
                        Text('${snapshot.data![i].userId}'),
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
