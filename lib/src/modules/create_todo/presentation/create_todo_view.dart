import 'package:flutter/material.dart';
import 'package:task_3/src/modules/create_todo/presentation/widgets/organism/create_task_content.dart';

class CreateTodoView extends StatefulWidget {
  const CreateTodoView({super.key});

  @override
  State<CreateTodoView> createState() => _CreateTodoViewState();
}

class _CreateTodoViewState extends State<CreateTodoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Create new task"),
      ),
      body: const SafeArea(child: CreateTaskContent()),
    );
  }
}
