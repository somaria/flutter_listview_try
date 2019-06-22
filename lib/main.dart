import 'package:flutter/material.dart';

class Todo {
  final String title;

  Todo(this.title);
}

void main() {
  runApp(
    MaterialApp(
        title: 'Passing Data',
        home: TodosScreen(
          todos: List.generate(
            10,
            (i) => Todo(
                  'Todo $i',
                ),
          ),
        )),
  );
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  TodosScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
            );
          }),
    );
  }
}
