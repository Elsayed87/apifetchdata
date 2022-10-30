import 'package:api_test/const/const.dart';
import 'package:api_test/sevices/todos_service.dart';
import 'package:flutter/material.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({super.key});

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  TodosService todos = TodosService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: todos.getTodosServices(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, i) {
                  return Card(
                    color: Colors.red.withOpacity(0.2),
                    child: ListTile(
                      leading: Text(
                        '${snapshot.data![i].id}',
                        style: textStyle,
                      ),
                      title: Text(
                        snapshot.data![i].todo,
                        style: textStyle,
                      ),
                      subtitle: Text(
                        '${snapshot.data![i].completed}',
                        style: textStyle,
                      ),
                      trailing: Text(
                        '${snapshot.data![i].userId}',
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
