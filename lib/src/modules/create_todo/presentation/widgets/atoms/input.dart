import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final TextEditingController textController;
  final String label;
  const Input({super.key, required this.textController, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(label: Text(label)),
    );
  }
}
