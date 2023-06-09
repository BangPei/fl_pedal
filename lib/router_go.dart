import 'package:fl_pedal/detail_screen.dart';
import 'package:fl_pedal/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouteNavigation {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: const DetailsScreen(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: CurveTween(curve: Curves.easeInOutCirc)
                      .animate(animation),
                );
              },
            );
          },
        ),
      ],
    ),
  ]);
}
