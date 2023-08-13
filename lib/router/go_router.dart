import 'package:ai_match_make_mobile_app/choose_log_in_or_register_page/choose_log_in_or_register_page.dart';
import 'package:ai_match_make_mobile_app/introduction_page/introduction_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const ChooseLogInOrRegisterPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'introduction',
          builder: (BuildContext context, GoRouterState state) {
            return const IntroductionPage();
          },
        ),
      ],
    ),
  ],
);
