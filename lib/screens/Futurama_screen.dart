import 'package:api_test/const/const.dart';
import 'package:api_test/sevices/futeroma_service.dart';
import 'package:flutter/material.dart';

class FuturmaScreen extends StatefulWidget {
  const FuturmaScreen({super.key});

  @override
  State<FuturmaScreen> createState() => _FuturmaScreenState();
}

class _FuturmaScreenState extends State<FuturmaScreen> {
  FuturamaService futuramaService = FuturamaService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: futuramaService.getFuturamaService(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, i) {
                  return Card(
                    color: Colors.red.withOpacity(0.2),
                    child: Column(children: [
                      Text(
                        '${snapshot.data![i].id}',
                        style: textStyle,
                      ),
                      Text(
                        '${snapshot.data![i].synopsis}',
                        style: textStyle,
                      ),
                      Text(
                        '${snapshot.data![i].yearsAired}',
                        style: textStyle,
                      ),
                      Text(
                        '${snapshot.data![i].creatorList[0].name}',
                        style: textStyle,
                      ),
                      Image.network('https://www.imdb.com/name/nm0169326/'),
                    ]),
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
