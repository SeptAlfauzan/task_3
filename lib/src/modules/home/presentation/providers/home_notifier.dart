import 'package:task_3/src/common/domain/dto/task.dart';
import 'package:task_3/src/modules/home/data/repositories/home_repository_impl.dart';
import 'package:task_3/src/modules/home/domain/dto/task_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:task_3/src/utils/sort_type.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  TaskState build() => const TaskState.initial();
  final repository = HomeRepositoryImpl();
  List<Task> _tempTasks = [];

  Future<void> fetchTasks() async {
    state = const TaskState.loading();
    try {
      await Future.delayed(const Duration(seconds: 1));
      final tasks = await repository.getAllTasks();
      state = TaskState.loaded(tasks);
      _tempTasks = tasks;
    } catch (e) {
      state = TaskState.error(e.toString());
    }
  }

  Future<void> toggleTask(Task inputTask) async {
    state.whenOrNull(
      loaded: (tasks) async {
        final updatedTasks = tasks.map((task) {
          if (task.id == inputTask.id) {
            return task.copyWith(isFinished: !task.isFinished);
          }
          return task;
        }).toList();
        await repository
            .updatedTask(inputTask.copyWith(isFinished: !inputTask.isFinished));
        state = TaskState.loaded(updatedTasks);
        _tempTasks = updatedTasks;
      },
    );
  }

  Future<void> deleteTask(Task deletedTask) async {
    state.whenOrNull(
      loaded: (tasks) async {
        final updatedTasks =
            tasks.where((task) => task != deletedTask).toList();
        await repository.deleteTask(deletedTask);
        state = TaskState.loaded(updatedTasks);
        _tempTasks = updatedTasks;
      },
    );
  }

  void filterTask(SortType type) {
    state.whenOrNull(loaded: (tasks) {
      if (type == SortType.ALL) {
        state = TaskState.loaded(_tempTasks);
      } else if (type == SortType.FINISHED) {
        state = TaskState.loaded(
          _tempTasks.where((task) => task.isFinished).toList(),
        );
      } else if (type == SortType.UNFINISHED) {
        state = TaskState.loaded(
          _tempTasks.where((task) => !task.isFinished).toList(),
        );
      }
    });
  }
}
