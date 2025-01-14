import 'package:flutter/material.dart';
import 'package:task_3/src/common/domain/dto/task.dart';
import 'package:task_3/src/modules/home/presentation/widgets/atoms/alert_delete_confirmation.dart';
import 'package:task_3/src/utils/string.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final Function(Task) toggleTaskFinish;
  final Function(Task) deleteTask;
  const TaskCard({
    super.key,
    required this.task,
    required this.toggleTaskFinish,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    final isExpired = DateTime.now().day > DateTime.parse(task.dueDate).day;
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  task.detail,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    decorationColor: Colors.deepPurpleAccent,
                    decoration: task.isFinished
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: isExpired ? Colors.red : Colors.black,
                  ),
                ),
                Text(
                  "Due date: ${parseDate(DateTime.parse(task.dueDate))}",
                  style: const TextStyle(color: Colors.grey),
                ),
                Text("Status: ${task.isFinished ? "Finished" : "Unfinished"}"),
                const SizedBox(height: 8),
              ],
            ),
            Column(
              children: [
                Checkbox(
                  value: task.isFinished,
                  onChanged: (_) {
                    toggleTaskFinish(task);
                  },
                ),
                IconButton(
                  onPressed: () async {
                    await showDeleteAlertDialog(context, () async {
                      await deleteTask(task);
                    });
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
