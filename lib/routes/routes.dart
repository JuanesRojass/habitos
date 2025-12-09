

import 'package:go_router/go_router.dart';
import 'package:habitos/screens/add_habit_screen.dart';
import 'package:habitos/screens/home.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen()
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) => AddHabitScreen())
]);