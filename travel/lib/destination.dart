import 'package:flutter/material.dart';

class Destination extends StatelessWidget {
  final String image, title;
  const Destination({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(image),
              ),
            ),
          ),
        ),
        Positioned.fill(child: Container(color: Colors.black)),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 10),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ],
    );
  }
}
