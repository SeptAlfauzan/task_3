// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_task.freezed.dart';
part 'create_task.g.dart';

@freezed
class CreateTask with _$CreateTask {
  const factory CreateTask({
    required String detail,
    @JsonKey(name: 'due_date') String? dueDate,
  }) = _CreateTask;

  factory CreateTask.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskFromJson(json);
}
