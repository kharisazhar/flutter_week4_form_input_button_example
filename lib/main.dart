import 'package:flutter/material.dart';

import 'feature/form/payment_details_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo FORM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      /// TODO : Change Root Here
      home: const PaymentDetailPage2(),
    );
  }
}
