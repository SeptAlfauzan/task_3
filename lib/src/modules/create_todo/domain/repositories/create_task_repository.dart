import 'package:task_3/src/modules/create_todo/domain/dto/create_task.dart';

abstract class CreateTaskRepository {
  Future<void> insertTask(CreateTask task);
}
