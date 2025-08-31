import 'package:flutter/material.dart';

import 'Button_group.dart';
import 'home.dart';
import 'input_flutter.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext contex){
    return MaterialApp(
      title: 'Batch-12',
      home: FlutterInput(),
      debugShowCheckedModeBanner: false,
    );
  }
}