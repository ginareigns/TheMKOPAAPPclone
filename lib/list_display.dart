import 'package:flutter/material.dart';

// class to define a Todo
class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

class TodoListDisplay extends StatelessWidget {
  TodoListDisplay({super.key});
  final List<Todo> todos = [
    const Todo('Buy groceries', 'Milk, bread, eggs, and fruits'),
    const Todo('Walk the dog', 'Take the dog for a 30-minute walk'),
    const Todo('Read a book', 'Read 50 pages of a new book'),
    const Todo('Complete Flutter project', 'Finish the todo app by evening'),
    const Todo('Call mom', 'Catch up with mom and update her about your day'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          'Todo List',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 203, 235, 236),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                todos[index].title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsofTodo(todo: todos[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailsofTodo extends StatelessWidget {
  const DetailsofTodo({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
