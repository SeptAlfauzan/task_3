import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_3/src/modules/create_todo/presentation/create_todo_view.dart';
import 'package:task_3/src/modules/home/presentation/home_view.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/create',
          builder: (BuildContext context, GoRouterState state) {
            return const CreateTodoView();
          },
        ),
      ],
    ),
  ],
);
