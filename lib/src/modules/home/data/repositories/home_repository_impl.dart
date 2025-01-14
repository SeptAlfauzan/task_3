import 'package:task_3/src/common/domain/dto/task.dart';
import 'package:task_3/src/helper/sqfilite.dart';
import 'package:task_3/src/modules/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<List<Task>> getAllTasks() async {
    final database = await SQLiteHelper().database;
    final result = await database.query('tasks');
    return result.map((task) => Task.fromMap(task)).toList();
  }

  @override
  Future<void> updatedTask(Task task) async {
    final database = await SQLiteHelper().database;
    await database.update('tasks', {'is_finished': task.isFinished ? 1 : 0},
        where: 'id = ?', whereArgs: [task.id]);
  }

  @override
  Future<void> deleteTask(Task task) async {
    final database = await SQLiteHelper().database;
    await database.delete('tasks', where: 'id = ?', whereArgs: [task.id]);
  }
}
