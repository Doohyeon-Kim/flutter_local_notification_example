import 'package:go_router/go_router.dart';

import 'app_route.dart';
import '../screens/home_screen.dart';
import '../screens/root_screen.dart';

GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) {
        return const RootScreen();
      },
      routes: [
        GoRoute(
          path: AppRoute.path.home,
          name: AppRoute.name.home,
          builder: (_, state) {
            return const HomeScreen();
          },
        ),
      ],
    ),
  ],
);
