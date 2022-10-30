import 'package:api_test/models/products_model.dart';
import 'package:api_test/sevices/carts_service.dart';
import 'package:api_test/sevices/product_service.dart';

import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  ProductService productService = ProductService();
  CartsService cart = CartsService();

  @override
  Widget build(BuildContext context) {
    cart.getCartsService();
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder<List<dynamic>>(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // print('we will ${snapshot.data!.length}');
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text('${snapshot.data![index]['title']}'),
                        // leading: CircleAvatar(
                        //     backgroundImage: NetworkImage(
                        //         '${snapshot.data![index].productsModel.thumbnail}')),
                        // trailing: CircleAvatar(
                        //     backgroundImage: NetworkImage(
                        //         '${snapshot.data![index].productsModel.description}')),
                      ),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
          future: productService.getAllProductService(),
        ));
  }
}
