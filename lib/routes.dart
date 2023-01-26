import 'package:go_router/go_router.dart';
import 'package:homeworks_web/screens/group_screen.dart';
import 'package:homeworks_web/screens/homework_screen.dart';
class ScreenRouter {
  static final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: GroupScreen.routeName,
      builder: (context, state) => const GroupScreen(),
      routes: [
        GoRoute(
          path: HomeworkScreen.routeName,
          builder: (context, state) => const HomeworkScreen(),
        ),
      ],
    ),
  ],
);

}

