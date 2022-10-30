import 'package:api_test/models/quotes_model.dart';
import 'package:api_test/sevices/quotes_service.dart';
import 'package:flutter/material.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  QuoteService quoteService = QuoteService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<QuotesModel>>(
          future: quoteService.getQuotesService(),
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
                        Text(
                          '${snapshot.data![i].quote}',
                          style: TextStyle(fontSize: 22),
                        ),
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
