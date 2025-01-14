// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createTaskHash() => r'f5dae953abfc1a415cd5f4f4395fc078cdc5b2fb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [createTask].
@ProviderFor(createTask)
const createTaskProvider = CreateTaskFamily();

/// See also [createTask].
class CreateTaskFamily extends Family<AsyncValue<void>> {
  /// See also [createTask].
  const CreateTaskFamily();

  /// See also [createTask].
  CreateTaskProvider call(
    CreateTask task,
  ) {
    return CreateTaskProvider(
      task,
    );
  }

  @override
  CreateTaskProvider getProviderOverride(
    covariant CreateTaskProvider provider,
  ) {
    return call(
      provider.task,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createTaskProvider';
}

/// See also [createTask].
class CreateTaskProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createTask].
  CreateTaskProvider(
    CreateTask task,
  ) : this._internal(
          (ref) => createTask(
            ref as CreateTaskRef,
            task,
          ),
          from: createTaskProvider,
          name: r'createTaskProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createTaskHash,
          dependencies: CreateTaskFamily._dependencies,
          allTransitiveDependencies:
              CreateTaskFamily._allTransitiveDependencies,
          task: task,
        );

  CreateTaskProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.task,
  }) : super.internal();

  final CreateTask task;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateTaskRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateTaskProvider._internal(
        (ref) => create(ref as CreateTaskRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        task: task,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateTaskProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateTaskProvider && other.task == task;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, task.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateTaskRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `task` of this provider.
  CreateTask get task;
}

class _CreateTaskProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateTaskRef {
  _CreateTaskProviderElement(super.provider);

  @override
  CreateTask get task => (origin as CreateTaskProvider).task;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
