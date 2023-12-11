import 'package:app/routing/old_app_routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentPage extends StatelessWidget {
  final int counselingId;

  const PaymentPage({super.key, required this.counselingId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Counseling $counselingId'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushNamed(
                  AppRouteKeys.counselingPayment,
                  pathParameters: {'counselingId': '$counselingId'},
                );
              },
              child: Text('Go to payment complete'),
            ),
          ],
        ),
      ),
    );
  }
}
