import 'package:api_test/const/const.dart';
import 'package:api_test/models/coffee_model.dart';
import 'package:api_test/sevices/coffee.service.dart';
import 'package:flutter/material.dart';

class CoffeeScreen extends StatefulWidget {
  const CoffeeScreen({super.key});

  @override
  State<CoffeeScreen> createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {
  CoffeeService coffee = CoffeeService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<CoffeeModel>>(
        future: coffee.getCoffeeServices(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: 20,
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
                            '${snapshot.data![i].title}',
                            style: textStyle,
                          ),
                          Text(
                            '${snapshot.data![i].description}',
                            style: textStyle,
                          ),
                          // Text(
                          //   '${snapshot.data![i].ingredientsList[0]}',
                          //   style: textStyle,
                          // ),
                          snapshot.data![i].image != null
                              ? Image.network(
                                  "${snapshot.data![i].image}",
                                  height: 100,
                                )
                              : Image.network(
                                  "https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.pexels.com%2Fphotos%2F302899%2Fpexels-photo-302899.jpeg%3Fcs%3Dsrgb%26dl%3Dpexels-chevanon-photography-302899.jpg%26fm%3Djpg&imgrefurl=https%3A%2F%2Fwww.pexels.com%2Fsearch%2Fcoffee%2F&tbnid=8HCUn5yQuuBDnM&vet=12ahUKEwiFz77Do4f7AhUGWhoKHWrXCMUQMygBegUIARDuAQ..i&docid=cAEVbbEtyDcddM&w=6016&h=4016&q=coffee%20image&ved=2ahUKEwiFz77Do4f7AhUGWhoKHWrXCMUQMygBegUIARDuAQ",
                                )
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
