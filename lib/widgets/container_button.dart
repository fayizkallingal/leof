import 'package:flutter/material.dart';

class Containerbutton extends StatelessWidget {
  final Color? bgcolor;
  final double? containerWidth;
  final String itext;

  const Containerbutton(
      {super.key, this.bgcolor, this.containerWidth, required this.itext});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgcolor,
      ),
      child: Center(
        child: Text(
          itext,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
