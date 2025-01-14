// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTask _$CreateTaskFromJson(Map<String, dynamic> json) {
  return _CreateTask.fromJson(json);
}

/// @nodoc
mixin _$CreateTask {
  String get detail => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String? get dueDate => throw _privateConstructorUsedError;

  /// Serializes this CreateTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTaskCopyWith<CreateTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskCopyWith<$Res> {
  factory $CreateTaskCopyWith(
          CreateTask value, $Res Function(CreateTask) then) =
      _$CreateTaskCopyWithImpl<$Res, CreateTask>;
  @useResult
  $Res call({String detail, @JsonKey(name: 'due_date') String? dueDate});
}

/// @nodoc
class _$CreateTaskCopyWithImpl<$Res, $Val extends CreateTask>
    implements $CreateTaskCopyWith<$Res> {
  _$CreateTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? dueDate = freezed,
  }) {
    return _then(_value.copyWith(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTaskImplCopyWith<$Res>
    implements $CreateTaskCopyWith<$Res> {
  factory _$$CreateTaskImplCopyWith(
          _$CreateTaskImpl value, $Res Function(_$CreateTaskImpl) then) =
      __$$CreateTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String detail, @JsonKey(name: 'due_date') String? dueDate});
}

/// @nodoc
class __$$CreateTaskImplCopyWithImpl<$Res>
    extends _$CreateTaskCopyWithImpl<$Res, _$CreateTaskImpl>
    implements _$$CreateTaskImplCopyWith<$Res> {
  __$$CreateTaskImplCopyWithImpl(
      _$CreateTaskImpl _value, $Res Function(_$CreateTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? dueDate = freezed,
  }) {
    return _then(_$CreateTaskImpl(
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTaskImpl implements _CreateTask {
  const _$CreateTaskImpl(
      {required this.detail, @JsonKey(name: 'due_date') this.dueDate});

  factory _$CreateTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTaskImplFromJson(json);

  @override
  final String detail;
  @override
  @JsonKey(name: 'due_date')
  final String? dueDate;

  @override
  String toString() {
    return 'CreateTask(detail: $detail, dueDate: $dueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskImpl &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, detail, dueDate);

  /// Create a copy of CreateTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskImplCopyWith<_$CreateTaskImpl> get copyWith =>
      __$$CreateTaskImplCopyWithImpl<_$CreateTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTaskImplToJson(
      this,
    );
  }
}

abstract class _CreateTask implements CreateTask {
  const factory _CreateTask(
      {required final String detail,
      @JsonKey(name: 'due_date') final String? dueDate}) = _$CreateTaskImpl;

  factory _CreateTask.fromJson(Map<String, dynamic> json) =
      _$CreateTaskImpl.fromJson;

  @override
  String get detail;
  @override
  @JsonKey(name: 'due_date')
  String? get dueDate;

  /// Create a copy of CreateTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskImplCopyWith<_$CreateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
