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
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
