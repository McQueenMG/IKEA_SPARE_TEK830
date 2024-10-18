import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/Pages/HomePage.dart'; // Import the new file where the homepage logic is.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'IKEA SPARE'),
    );
  }
}
