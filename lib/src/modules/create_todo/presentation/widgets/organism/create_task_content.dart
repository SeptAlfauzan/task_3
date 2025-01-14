import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:task_3/src/modules/create_todo/presentation/providers/create_task_provider.dart';
import 'package:task_3/src/modules/create_todo/presentation/widgets/molecules/create_todo_form.dart';
import 'package:task_3/src/modules/home/presentation/providers/home_notifier.dart';

class CreateTaskContent extends ConsumerWidget {
  const CreateTaskContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CreateTodoForm(
      onSubmit: (data) async {
        try {
          await ref.read(createTaskProvider(data).future);

          Fluttertoast.showToast(
            msg: "Successfully create task 🎉",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            fontSize: 16.0,
          );
          await ref.read(homeNotifierProvider.notifier).fetchTasks();
          // ignore: use_build_context_synchronously
          GoRouter.of(context).pop();
        } catch (e) {
          Fluttertoast.showToast(
            msg: "Error creating task\n $e",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            fontSize: 16.0,
          );
        }
      },
    );
  }
}
