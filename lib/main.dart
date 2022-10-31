import 'package:api_test/screens/Futurama_screen.dart';
import 'package:api_test/screens/beers_screen.dart';
import 'package:api_test/screens/coffee_screen.dart';
import 'package:api_test/screens/comments_screen.dart';
import 'package:api_test/screens/dummy_user_screen.dart';
import 'package:api_test/screens/final_user_screen.dart';
import 'package:api_test/screens/home_screen.dart';
import 'package:api_test/screens/post_screen.dart';
import 'package:api_test/screens/products_screen.dart';
import 'package:api_test/screens/quotes_screen.dart';
import 'package:api_test/screens/todos_screen.dart';
import 'package:api_test/screens/user_data_screen.dart';
import 'package:api_test/sevices/user_services.dart';
import 'package:flutter/material.dart';

import 'screens/carts_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserScreenData(),
    );
  }
}
