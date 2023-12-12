import 'package:app/feature/counseling/payment_complete_page.dart';
import 'package:app/feature/counseling/payment_page.dart';
import 'package:app/routing/old_app_routing.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

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
