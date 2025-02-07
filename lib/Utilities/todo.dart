import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class todo extends StatelessWidget {
  final String todoname;
  final bool mark;

  Function(BuildContext)? deletetask;

  Function(bool?)? onChanged;

  todo(
      {super.key,
      required this.todoname,
      required this.mark,
      required this.onChanged,
      required this.deletetask});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: deletetask,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(12),
          )
        ]),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 248, 244, 250),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Checkbox(
                value: mark,
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
              Text(
                todoname,
                style: TextStyle(
                    decoration: mark
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              )
            ],
          ),
        ),
      ),
    );
  }
}
