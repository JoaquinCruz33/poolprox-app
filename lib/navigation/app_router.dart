import 'package:go_router/go_router.dart';

import '../screens/clients/clients_screen.dart';
import '../screens/main/main_screen.dart';
import '../screens/splash/splash_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),

    GoRoute(path: '/home', builder: (context, state) => const MainScreen()),

    GoRoute(
      path: '/clients',
      builder: (context, state) => const ClientsScreen(),
    ),
  ],
);
