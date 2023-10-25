import 'package:flutter/material.dart';
import 'package:flutter_3d/router/page_name.dart';
import 'package:flutter_3d/ui/three_d_model/three_d_model_page.dart';
import 'package:flutter_3d/ui/tutorial/tutorial.dart';
import 'package:go_router/go_router.dart';

import '../ui/home/home.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
    ),
    GoRoute(
      path: tutorialPage.path,
      pageBuilder: (context, state) =>
          const MaterialPage(child: TutorialPage()),
    ),
    GoRoute(
      path: threeDModelPage.path,
      pageBuilder: (context, state) =>
          const MaterialPage(child: ThreeDModelPage()),
    ),
  ],
);
