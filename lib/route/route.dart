import 'package:gandan_01/screen/root_screen.dart';
import 'package:go_router/go_router.dart';

import '../screen/circular_screen.dart';
import '../screen/countdown_timer_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return RootScreen();
      },
      routes: [
        GoRoute(
          path: 'circular',
          builder: (context, state) {
            return CircularScreen();
          },
        ),
        GoRoute(
          path: 'countdown',
          builder: (context, state) {
            return CountdownTimerScreen();
          },
        ),
      ],
    ),
  ],
);
