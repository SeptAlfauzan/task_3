import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_3/src/modules/home/presentation/providers/home_notifier.dart';
import 'package:task_3/src/modules/home/presentation/widgets/molecules/task_card.dart';

class HomeViewContent extends ConsumerStatefulWidget {
  const HomeViewContent({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomeViewContentState();
}

class _HomeViewContentState extends ConsumerState<HomeViewContent> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() async {
      await ref.read(homeNotifierProvider.notifier).fetchTasks();
    });
  }

  @override
  Widget build(BuildContext context) {
    final taskState = ref.watch(homeNotifierProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: taskState.when(
        error: (error) => Text(error),
        initial: () => const Center(child: CircularProgressIndicator()),
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (data) => data.isEmpty
            ? const Center(child: Text("Task is empty"))
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) => TaskCard(
                  task: data[index],
                  deleteTask: (value) async {
                    await ref
                        .read(
                          homeNotifierProvider.notifier,
                        )
                        .deleteTask(
                          value,
                        );
                  },
                  toggleTaskFinish: (value) async {
                    await ref
                        .read(
                          homeNotifierProvider.notifier,
                        )
                        .toggleTask(
                          value,
                        );
                  },
                ),
              ),
      ),
    );
  }
}
