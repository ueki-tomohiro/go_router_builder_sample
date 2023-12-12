import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  final String? initTab;

  const SettingPage({
    super.key,
    required this.initTab,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Setting Page'),
          ],
        ),
      ),
    );
  }
}
