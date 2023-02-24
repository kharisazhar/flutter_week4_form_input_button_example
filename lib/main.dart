import 'package:flutter/material.dart';

import 'assignment_example/input_contact_form_page.dart';
import 'input_contact_form_page.dart';

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
      home: const InputContactFormPage(),
    );
  }
}

