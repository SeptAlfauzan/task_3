import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task_3/src/extension/list_widget.dart';
import 'package:task_3/src/modules/create_todo/domain/dto/create_task.dart';
import 'package:task_3/src/modules/create_todo/presentation/widgets/atoms/date_picker.dart';
import 'package:task_3/src/modules/create_todo/presentation/widgets/atoms/input.dart';

class CreateTodoForm extends StatefulWidget {
  final Function(CreateTask) onSubmit;
  const CreateTodoForm({super.key, required this.onSubmit});

  @override
  State<CreateTodoForm> createState() => _CreateTodoFormState();
}

class _CreateTodoFormState extends State<CreateTodoForm> {
  final detailTextController = TextEditingController();

  DateTime selectedDate = DateTime.now().add(const Duration(days: 1));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Input(textController: detailTextController, label: "Task detail"),
          DatePicker(
            onPickDate: (date) {
              setState(
                () {
                  selectedDate = date;
                },
              );
            },
            label: "Due date",
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Colors.deepPurpleAccent),
                  foregroundColor: WidgetStatePropertyAll(Colors.white)),
              onPressed: () {
                if (detailTextController.text.isEmpty) {
                  Fluttertoast.showToast(
                    msg: "Task detail must be filled!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    fontSize: 16.0,
                  );
                  return;
                }

                final createTask = CreateTask(
                  detail: detailTextController.text,
                  dueDate: selectedDate.toString(),
                );
                widget.onSubmit(createTask);
                FocusManager.instance.primaryFocus?.unfocus();
              },
              child: const Text("Create"),
            ),
          )
        ].addGap(gapSize: 24, axis: Axis.vertical),
      ),
    );
  }
}
