import 'package:flutter/material.dart';
import 'package:freelancing_app/views/introView/intro_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freelancing Guide App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.

        appBarTheme: const AppBarTheme(),
        useMaterial3: true,
      ),
      home: IntroView(),
    );
  }
}
