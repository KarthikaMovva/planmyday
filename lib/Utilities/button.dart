import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String text;
  final VoidCallback ontap;

  const button({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: ontap,
      color: Theme.of(context).primaryColor,
      child: Text(
        text, 
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
