import 'package:api_test/models/user_model.dart';
import 'package:api_test/sevices/user_services.dart';
import 'package:flutter/material.dart';
// list of maps
//nested map every map is key and value

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserServices user = UserServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<UserModel>>(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.teal.withOpacity(.2),
                      child: ListTile(
                        trailing: Text('${snapshot.data![index].id}'),
                        leading: Text('${snapshot.data![index].name}'),
                        title:
                            Text('${snapshot.data![index].addressModel.city}'),
                        subtitle: Text(
                            '${snapshot.data![index].companyModel.catchPhrase}'),
                      ),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
          future: user.getUserServices()),
    );
  }
}
