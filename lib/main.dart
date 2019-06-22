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

  TodosScreen({this.todos});

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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          todo: todos[index],
                        ),
                  ),
                );
              },
            );
          }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;

  DetailScreen({this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("test")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              child: Text(
                "test" + todo.title,
                style: TextStyle(fontSize: 24, color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
