import 'package:api_test/const/const.dart';
import 'package:api_test/models/beers_model.dart';
import 'package:api_test/sevices/beers_service.dart';
import 'package:flutter/material.dart';

class BeersScreen extends StatefulWidget {
  const BeersScreen({super.key});

  @override
  State<BeersScreen> createState() => _BeersScreenState();
}

class _BeersScreenState extends State<BeersScreen> {
  BeersService beersService = BeersService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<BeersModel>>(
        future: beersService.getBeersServices(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, i) {
                  return Card(
                      color: Colors.red.withOpacity(0.1),
                      child: Column(
                        children: [
                          Text(
                            '${snapshot.data![i].id}',
                            style: textStyle,
                          ),
                          Text(
                            '${snapshot.data![i].name}',
                            style: textStyle,
                          ),
                          Text(
                            '${snapshot.data![i].price}',
                            style: textStyle,
                          ),
                          Text(
                            '${snapshot.data![i].ratingModel.average}',
                            style: textStyle,
                          ),
                          Text(
                            '${snapshot.data![i].ratingModel.reviews}',
                            style: textStyle,
                          ),
                          // Text(
                          //   '${snapshot.data![i].ingredientsList[0]}',
                          //   style: textStyle,
                          // ),

                          // Image.network(
                          //   "${snapshot.data![i].image}",
                          //   height: 100,
                          // )
                        ],
                      ));
                });
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
