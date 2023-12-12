import 'package:app/feature/home/home_page.dart';
import 'package:app/feature/inquiry/inquiry_page.dart';
import 'package:app/feature/setting/setting_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomePage();
  }
}

class InquiryRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return InquiryPage();
  }
}

class SettingRoute extends GoRouteData {
  final String? tab;

  const SettingRoute({
    this.tab,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SettingPage(
      initTab: tab,
    );
  }
}
