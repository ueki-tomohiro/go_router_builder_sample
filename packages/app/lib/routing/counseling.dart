part of 'app_routing.dart';

class PaymentRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  final int counselingId;

  const PaymentRoute({
    required this.counselingId,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PaymentPage(
      counselingId: counselingId,
    );
  }
}

class PaymentCompleteRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  final int counselingId;

  const PaymentCompleteRoute({
    required this.counselingId,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PaymentCompletePage(
      counselingId: counselingId,
    );
  }
}
