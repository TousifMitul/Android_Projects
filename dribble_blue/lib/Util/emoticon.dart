import 'package:flutter/material.dart';
class Emoticon extends StatelessWidget {
  final String emoticon;
  const Emoticon({
    Key? key,
 required this.emoticon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Center(
        child:
      Text(
        emoticon,
          style: TextStyle(
          fontSize:28,
      ),
      ),
      ),
    );
  }
}
