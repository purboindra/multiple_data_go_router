import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/screen_1.dart';
import 'package:go_router_example/screen_2.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyFirstScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'second-screen',
          builder: (BuildContext context, GoRouterState state) {
            Map<String, dynamic> data = state.extra as Map<String, dynamic>;
            log('DATA $data');
            return MySecondScreen(
              age: data['age'],
              job: data['job'],
              name: data['name'],
            );
          },
        ),
      ],
    ),
  ],
);
