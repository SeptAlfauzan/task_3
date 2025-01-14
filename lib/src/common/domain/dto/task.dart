// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required int id,
    required String detail,
    @JsonKey(
      name: 'is_finished',
      fromJson: TaskUtils.intToBool,
      toJson: TaskUtils.boolToInt,
    )
    @Default(false)
    bool isFinished,
    @JsonKey(name: 'due_date') required String dueDate,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _Task;
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  factory Task.fromMap(Map<String, dynamic> map) => Task.fromJson(map);
}

mixin TaskUtils {
  static bool intToBool(dynamic value) => value == 1;
  static int boolToInt(dynamic value) => value ? 1 : 0;
}
