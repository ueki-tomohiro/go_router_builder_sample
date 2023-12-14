part of 'app_routing.dart';

class HomeRoute extends FadeGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomePage();
  }
}

class InquiryRoute extends FadeGoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return InquiryPage();
  }
}

class SettingRoute extends FadeGoRouteData {
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
