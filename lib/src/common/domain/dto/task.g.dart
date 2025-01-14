// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: (json['id'] as num).toInt(),
      detail: json['detail'] as String,
      isFinished: json['is_finished'] == null
          ? false
          : TaskUtils.intToBool(json['is_finished']),
      dueDate: json['due_date'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'detail': instance.detail,
      'is_finished': TaskUtils.boolToInt(instance.isFinished),
      'due_date': instance.dueDate,
      'created_at': instance.createdAt,
    };
