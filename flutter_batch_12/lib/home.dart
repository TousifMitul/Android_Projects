import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is appbar'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Text('This is Body',
      style: TextStyle(
        fontSize: 30,
        color: Colors.deepOrange,
        fontWeight: FontWeight.bold,

      ),),
    );
  }
}
