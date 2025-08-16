import 'package:flutter/material.dart';
import 'package:blue_login_page/login.dart';
import 'package:blue_login_page/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {

      'login': (context) => MyLogin(),
    },
  ));
}
