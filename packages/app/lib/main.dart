import 'package:app/routing/app_routing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerDelegate: typedRouter.routerDelegate,
      routeInformationParser: typedRouter.routeInformationParser,
      routeInformationProvider: typedRouter.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
    ),
  );
}
