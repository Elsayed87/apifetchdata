import 'package:api_test/models/cart_model.dart';
import 'package:api_test/models/total_carts_model.dart';
import 'package:api_test/sevices/carts_service.dart';
import 'package:api_test/sevices/users_services.dart';
import 'package:flutter/material.dart';

class CartsScreen extends StatefulWidget {
  const CartsScreen({super.key});

  @override
  State<CartsScreen> createState() => _CartsScreenState();
}

class _CartsScreenState extends State<CartsScreen> {
  CartsService cartsService = CartsService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<TotalCarts>(
        future: cartsService.getCartsService(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data!.totalCarts.length);
            return ListView.builder(
                itemCount: snapshot.data!.totalCarts.length,
                itemBuilder: (context, i) {
                  return Card(
                    color: Colors.amber.withOpacity(.2),
                    child: ListTile(
                      title: Text('${snapshot.data!.totalCarts[i].total}'),
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

  int getnumber(int i) {
    if (i > 4) {
      i = 0;
    }
    return i;
  }
}
