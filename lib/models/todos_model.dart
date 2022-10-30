class FinalTodosModel {
  final List<TodosModel> todosList;

  FinalTodosModel({required this.todosList});
  factory FinalTodosModel.fromJson(json) {
    return FinalTodosModel(todosList: getList(json['todos']));
  }
  static List<TodosModel> getList(List<dynamic> list) {
    List<TodosModel> finalList =
        list.map((e) => TodosModel.fromJson(e)).toList();
    return finalList;
  }
}

class TodosModel {
  final int id;
  final String todo;
  final bool completed;
  final int userId;

  TodosModel(
      {required this.id,
      required this.todo,
      required this.completed,
      required this.userId});
  factory TodosModel.fromJson(json) {
    return TodosModel(
        id: json['id'],
        todo: json['todo'],
        completed: json['completed'],
        userId: json['userId']);
  }
}
// {
// "id": 1,
// "todo": "Do something nice for someone I care about",
// "completed": true,
// "userId": 26
// },