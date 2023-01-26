import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homeworks_web/routes.dart';
import 'package:homeworks_web/screens/group_screen.dart';

import 'screens/homework_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: GoRouter(
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
      ),
    );
  }
}
