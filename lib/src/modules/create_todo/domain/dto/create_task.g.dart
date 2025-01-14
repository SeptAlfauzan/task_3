// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTaskImpl _$$CreateTaskImplFromJson(Map<String, dynamic> json) =>
    _$CreateTaskImpl(
      detail: json['detail'] as String,
      dueDate: json['due_date'] as String?,
    );

Map<String, dynamic> _$$CreateTaskImplToJson(_$CreateTaskImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'due_date': instance.dueDate,
    };
