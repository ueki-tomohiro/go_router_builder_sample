import 'package:app/routing/app_routing.dart';
import 'package:flutter/material.dart';

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
              onPressed: () => CounselingRoute(counselingId: 1).push(context),
              child: Text('Counseling 1'),
            ),
            ElevatedButton(
              onPressed: () => CounselingRoute(counselingId: 2).push(context),
              child: Text('Counseling 2'),
            ),
            ElevatedButton(
              onPressed: () => CounselingRoute(counselingId: 3).push(context),
              child: Text('Counseling 3'),
            ),
            ElevatedButton(
              onPressed: () => SettingRoute(tab: 'counseling').push(context),
              child: Text('Setting tab'),
            ),
          ],
        ),
      ),
    );
  }
}
