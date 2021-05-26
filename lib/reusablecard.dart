import 'package:flutter/material.dart';
// ignore: camel_case_types
class reusablecard extends StatelessWidget {
  reusablecard({@required this.colour, this.cardChild});
  final cardChild;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}