import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/home/home.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
    ),
  ],
);
