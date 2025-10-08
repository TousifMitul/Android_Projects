import 'package:flutter/material.dart';
import 'package:woocom/home.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      title: "Woo Commerce",
    );
  }
}
