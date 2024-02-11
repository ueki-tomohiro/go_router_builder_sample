import 'package:app/feature/home/home_page.dart';
import 'package:app/routing/old_app_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Home testing', () {
    testWidgets('show', (tester) async {
      final List<GoRoute> routes = <GoRoute>[
        GoRoute(
          path: '/home',
          name: AppRouteKeys.home,
          builder: (context, state) => HomePage(),
        ),
      ];

      final router = GoRouter(
        routes: routes,
        initialLocation: '/home',
      );

      await tester.pumpWidget(MaterialApp.router(
        routerConfig: router,
        title: 'home page',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ));
    });
  });
}
