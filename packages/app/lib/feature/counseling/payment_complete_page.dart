import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentCompletePage extends StatelessWidget {
  final int counselingId;

  const PaymentCompletePage({super.key, required this.counselingId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Payment Complete Counseling $counselingId'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Payment Complete Counseling $counselingId'),
          ],
        ),
      ),
    );
  }
}
