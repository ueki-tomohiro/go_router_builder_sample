import 'package:app/feature/counseling/counseling_page.dart';
import 'package:app/feature/counseling/payment_complete_page.dart';
import 'package:app/feature/counseling/payment_page.dart';
import 'package:app/feature/home/home_page.dart';
import 'package:app/feature/inquiry/inquiry_page.dart';
import 'package:app/feature/root/root_page.dart';
import 'package:app/feature/setting/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouteKeys {
  static const home = 'home';
  static const counseling = 'counseling';
  static const counselingPayment = 'counselingPayment';
  static const counselingPaymentComplete = 'counselingPaymentComplete';
  static const inquiry = 'inquiry';
  static const setting = 'setting';
  static const signIn = 'signIn';
}

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'home');

final routes = [
  ShellRoute(
    navigatorKey: homeNavigatorKey,
    builder: (context, state, child) => RootPage(page: child),
    routes: [
      GoRoute(
          path: '/home',
          name: AppRouteKeys.home,
          builder: (context, state) => const HomePage()),
      GoRoute(
          path: '/inquiry',
          name: AppRouteKeys.inquiry,
          builder: (context, state) => const InquiryPage()),
      GoRoute(
          path: '/setting',
          name: AppRouteKeys.setting,
          builder: (context, state) =>
              SettingPage(initTab: state.uri.queryParameters['tab'])),
    ],
  ),
  GoRoute(
      path: '/counseling/:counselingId',
      name: AppRouteKeys.counseling,
      parentNavigatorKey: rootNavigatorKey,
      builder: (context, state) => CounselingPage(
          counselingId: int.parse(state.pathParameters['counselingId']!)),
      routes: [
        GoRoute(
          path: 'payment',
          name: AppRouteKeys.counselingPayment,
          parentNavigatorKey: rootNavigatorKey,
          builder: (context, state) => PaymentPage(
              counselingId: int.parse(state.pathParameters['counselingId']!)),
          routes: [
            GoRoute(
                path: 'complete',
                name: AppRouteKeys.counselingPaymentComplete,
                parentNavigatorKey: rootNavigatorKey,
                builder: (context, state) => PaymentCompletePage(
                    counselingId:
                        int.parse(state.pathParameters['counselingId']!))),
          ],
        ),
      ]),
];

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/home',
  routes: routes,
);
