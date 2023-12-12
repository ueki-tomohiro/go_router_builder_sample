import 'package:app/routing/old_app_routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.pushNamed(AppRouteKeys.counseling,
                  pathParameters: {'counselingId': '1'}),
              child: Text('Counseling 1'),
            ),
            ElevatedButton(
              onPressed: () => context.pushNamed(AppRouteKeys.counseling,
                  pathParameters: {'counselingId': '2'}),
              child: Text('Counseling 2'),
            ),
            ElevatedButton(
              onPressed: () => context.pushNamed(AppRouteKeys.counseling,
                  pathParameters: {'counselingId': '3'}),
              child: Text('Counseling 3'),
            ),
          ],
        ),
      ),
    );
  }
}
