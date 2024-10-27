import 'package:flutter/material.dart';
import 'package:hackathon/signup.dart';

import 'landing_page.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/signup': (context) => SignupPage(),
        '/login': (context) => LoginApp(),
      },

      home: Welcome(),
      // initialRoute: '/category',
    );
  }
}
