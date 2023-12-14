import 'package:app/routing/app_routing.dart';
import 'package:flutter/material.dart';

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
              onPressed: () => PaymentCompleteRoute(counselingId: counselingId)
                  .push(context),
              child: Text('Go to payment complete'),
            ),
          ],
        ),
      ),
    );
  }
}
