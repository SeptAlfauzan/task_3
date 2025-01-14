import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:task_3/src/modules/create_todo/data/repositories/create_task_repository_impl.dart';
import 'package:task_3/src/modules/create_todo/domain/dto/create_task.dart';

part 'create_task_provider.g.dart';

@riverpod
Future<void> createTask(Ref ref, CreateTask task) async {
  final repository = CreateTaskRepositoryImpl();
  await repository.insertTask(task);
}
