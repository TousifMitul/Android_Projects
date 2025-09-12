import 'package:flutter/material.dart';

class Destination extends StatelessWidget {
  final String image, title;
  const Destination({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Positioned.fill(
            child: Image.network(image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned.fill(child: Container( decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
          color: Colors.black26,)
        ),),
        Positioned(left: 15, bottom: 15, child: Text(title,
        style: TextStyle(fontSize: 20,color: Colors.white),),),
      ],
    );
  }
}
