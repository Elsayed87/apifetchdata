import 'package:api_test/models/data_user_model.dart';
import 'package:api_test/sevices/get_user_data_service.dart';
import 'package:flutter/material.dart';

class UserScreenData extends StatefulWidget {
  const UserScreenData({super.key});

  @override
  State<UserScreenData> createState() => _UserScreenDataState();
}

class _UserScreenDataState extends State<UserScreenData> {
  DataOfUser data = DataOfUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<DataUserModel>>(
        future: data.getAllUserData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, i) {
                  return Card(
                    color: Colors.teal.withOpacity(.2),
                    child: ListTile(
                      title: Text('${snapshot.data![i].name}'),
                      subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${snapshot.data![i].gender}'),
                            Text('${snapshot.data![i].email}')
                          ]),
                      leading: Text('${snapshot.data![i].id}'),
                      trailing: Text('${snapshot.data![i].status}'),
                    ),
                  );
                });
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
