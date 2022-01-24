import 'package:flutter/material.dart';

class RoundBox extends StatelessWidget {
  Color color;
  String text;

  RoundBox({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: color,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
