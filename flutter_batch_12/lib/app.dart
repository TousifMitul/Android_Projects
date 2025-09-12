import 'package:flutter/material.dart';
import 'package:flutter_batch_12/home.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Batch 12',
      home: Home(),
    );
  }
}
