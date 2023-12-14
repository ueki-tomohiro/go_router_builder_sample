import 'package:app/feature/counseling/counseling_page.dart';
import 'package:app/feature/counseling/payment_complete_page.dart';
import 'package:app/feature/counseling/payment_page.dart';
import 'package:app/feature/home/home_page.dart';
import 'package:app/feature/inquiry/inquiry_page.dart';
import 'package:app/feature/root/root_page.dart';
import 'package:app/feature/setting/setting_page.dart';
import 'package:app/routing/old_app_routing.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

part 'app_routing.g.dart';
part 'counseling.dart';
part 'root.dart';

@TypedShellRoute<RootRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: '/home',
      name: AppRouteKeys.home,
    ),
    TypedGoRoute<InquiryRoute>(
      path: '/inquiry',
      name: AppRouteKeys.inquiry,
    ),
    TypedGoRoute<SettingRoute>(
      path: '/setting',
      name: AppRouteKeys.setting,
    )
  ],
)
class RootRoute extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
  const RootRoute();

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return RootPage(page: navigator);
  }
}

@TypedGoRoute<CounselingRoute>(
  path: '/counseling/:counselingId',
  name: AppRouteKeys.counseling,
  routes: [
    TypedGoRoute<PaymentRoute>(
      path: 'payment',
      name: AppRouteKeys.counselingPayment,
    ),
    TypedGoRoute<PaymentCompleteRoute>(
      path: 'complete',
      name: AppRouteKeys.counselingPaymentComplete,
    ),
  ],
)
class CounselingRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  final int counselingId;

  const CounselingRoute({
    required this.counselingId,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CounselingPage(
      counselingId: counselingId,
    );
  }
}

final typedRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/home',
  routes: $appRoutes,
);
