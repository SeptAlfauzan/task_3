import 'package:task_3/src/common/domain/dto/task.dart';

abstract class HomeRepository {
  Future<List<Task>> getAllTasks();
  Future<void> updatedTask(Task task);
  Future<void> deleteTask(Task task);
}
