import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice Pembayaran'),centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
    );
  }
}
