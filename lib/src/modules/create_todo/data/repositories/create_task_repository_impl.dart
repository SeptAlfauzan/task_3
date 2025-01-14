import 'package:task_3/src/helper/sqfilite.dart';
import 'package:task_3/src/modules/create_todo/domain/dto/create_task.dart';
import 'package:task_3/src/modules/create_todo/domain/repositories/create_task_repository.dart';

class CreateTaskRepositoryImpl implements CreateTaskRepository {
  @override
  Future<void> insertTask(CreateTask task) async {
    final database = await SQLiteHelper().database;
    await database.insert('tasks', task.toJson());
  }
}
