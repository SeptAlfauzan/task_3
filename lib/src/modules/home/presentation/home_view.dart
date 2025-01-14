import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_3/src/modules/home/presentation/widgets/atoms/app_bar_pop_up_menu.dart';
import 'package:task_3/src/modules/home/presentation/widgets/organism/home_view_content.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("My Todo"),
        actions: const [AppBarPopUpMenu()],
      ),
      body: const HomeViewContent(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.go('/create'),
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
