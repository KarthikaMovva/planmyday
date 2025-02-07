import 'package:flutter/material.dart';
import 'package:my_todo_app/Utilities/dialog.dart';
import 'package:my_todo_app/Utilities/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  List todolist = [
    ["code an app", true],
    ["sleep", false]
  ];

  void tapcheckbox(bool? value, int index) {
    setState(() {
      todolist[index][1] = !todolist[index][1];
    });
  }

  void Addtask() {
    setState(() {
      todolist.add([_controller.text, false]); // Changed {} to []
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void removetask(int index) {
    setState(() {
      todolist.removeAt(index);
    });
  }

  void addlist() {
    showDialog(
      context: context,
      builder: (context) {
        return dialog(
          controller: _controller,
          onSave: Addtask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 172, 148, 235),
      appBar: AppBar(
        title: const Text("Plan My Day"),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addlist,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (context, index) {
          return todo(
            todoname: todolist[index][0],
            mark: todolist[index][1],
            onChanged: (value) => tapcheckbox(value, index),
            deletetask: (context) => removetask(index),
          );
        },
      ),
    );
  }
}
