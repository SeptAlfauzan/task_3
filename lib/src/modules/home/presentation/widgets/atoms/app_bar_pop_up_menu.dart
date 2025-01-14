import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Add this if not already included
import 'package:task_3/src/modules/home/presentation/providers/home_notifier.dart';
import 'package:task_3/src/modules/home/presentation/widgets/organism/home_view_content.dart';
import 'package:go_router/go_router.dart';
import 'package:task_3/src/utils/sort_type.dart';

class AppBarPopUpMenu extends ConsumerStatefulWidget {
  const AppBarPopUpMenu({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AppBarPopUpMenuState();
}

class _AppBarPopUpMenuState extends ConsumerState<AppBarPopUpMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert),
      onSelected: (value) {
        final type = stringToSortType(value);
        if (type != null) {
          ref.read(homeNotifierProvider.notifier).filterTask(type);
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Filter by: $value task')),
        );
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem(
          value: 'all',
          child: Text('all'),
        ),
        const PopupMenuItem(
          value: 'finished',
          child: Text('finished'),
        ),
        const PopupMenuItem(
          value: 'unfinished',
          child: Text('unfinished'),
        ),
      ],
    );
  }
}
