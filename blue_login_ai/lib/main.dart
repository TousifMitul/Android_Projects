import 'package:flutter/material.dart';

import 'LoginForm.dart';
import 'RegisterForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login & Register Tabs',
      home: AuthPage(),
    );
  }
}

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Tab Bar
              TabBar(
                labelColor: Colors.blue.shade900,
                unselectedLabelColor: Colors.blue.shade300,
                indicatorColor: Colors.blue.shade900,
                indicatorWeight: 2.5,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: 'Login'),
                  Tab(text: 'Register'),
                ],
              ),
              SizedBox(height: 20),

              // Tab Views
              Expanded(
                child: TabBarView(
                  children: [
                    LoginForm(),
                    RegisterForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}