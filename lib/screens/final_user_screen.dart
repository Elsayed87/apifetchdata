import 'package:api_test/const/const.dart';
import 'package:api_test/models/reqres_user_model.dart';
import 'package:api_test/sevices/finaluser_service.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  FinalUserService finalUserService = FinalUserService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<ReqresUserModel>>(
        future: finalUserService.getService(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, i) {
                  return Card(
                    color: Colors.red.withOpacity(0.2),
                    child: ListTile(
                      title: Text(
                        'FName: ${snapshot.data![i].first_name}',
                        style: textStyle,
                      ),
                      subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'LName: ${snapshot.data![i].last_name}',
                              style: textStyle,
                            ),
                            Text(
                              'Email: ${snapshot.data![i].email}',
                              style: textStyle,
                            )
                          ]),
                      trailing: Image.network('${snapshot.data![i].avatar}'),
                      leading: Text(
                        'ID: ${snapshot.data![i].id}',
                        style: textStyle,
                      ),
                    ),
                  );
                });
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
