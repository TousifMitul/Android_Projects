import 'package:flutter/material.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xfff7f3f9),
        appBar: AppBar(
          title: const Text("Courses"),
          backgroundColor: Colors.cyan,
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CourseGrid(),
        ),
      ),
    );
  }
}

class CourseGrid extends StatelessWidget {
  const CourseGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 0.65,
      children: const [
        CourseCard(
          image: "assets/mern.png",
          title: "Full Stack Web Development with JavaScript (MERN)",
          batch: "ব্যাচ ১১",
          seats: "৬ সিট",
          days: "৬ দিন বাকি",
        ),
        CourseCard(
          image: "assets/python.png",
          title: "Full Stack Web Development with Python, Django & React",
          batch: "ব্যাচ ৬",
          seats: "৮৬ সিট",
          days: "৪০ দিন বাকি",
        ),
        CourseCard(
          image: "assets/asp.png",
          title: "Full Stack Web Development with ASP.Net Core",
          batch: "ব্যাচ ৭",
          seats: "৭৫ সিট",
          days: "৩৯ দিন বাকি",
        ),
        CourseCard(
          image: "assets/sqa.png",
          title: "SQA: Manual & Automated Testing",
          batch: "ব্যাচ ১৩",
          seats: "৬৫ সিট",
          days: "৪১ দিন বাকি",
        ),
      ],
    );
  }
}