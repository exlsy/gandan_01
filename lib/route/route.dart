import 'package:gandan_01/screen/calendar_screen.dart';
import 'package:gandan_01/screen/circular_progress_screen.dart';
import 'package:gandan_01/screen/root_screen.dart';
import 'package:go_router/go_router.dart';

import '../screen/circular_screen.dart';
import '../screen/countdown_timer_screen.dart';
import '../screen/settings_screen.dart';
import '../screen/wave_screen.dart';

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
          path: 'circularprogress',
          builder: (context, state) {
            return CircularProgressScreen();
          },
        ),
        GoRoute(
          path: 'countdown',
          builder: (context, state) {
            return CountdownTimerScreen();
          },
        ),
        GoRoute(
          path: 'calendar',
          builder: (context, state) {
            return CalendarScreen();
          },
        ),
        GoRoute(
          path: 'wave',
          builder: (context, state) {
            return WaveScreen();
          },
        ),
        GoRoute(
          path: 'settings',
          builder: (context, state) {
            return SettingsScreen();
          },
        ),
      ],
    ),
  ],
);
