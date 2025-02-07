import 'package:flutter/material.dart';
import 'package:my_todo_app/Utilities/button.dart';

class dialog extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
 dialog({super.key, required this.controller,
  required this.onSave,
  required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 251, 250, 252),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                button(text: "Save", ontap: onSave),
                const SizedBox(width: 8),
                button(text: "Cancel", ontap: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
