
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Inputpage.dart';
void main() {
  runApp(BMICALC());
}
class BMICALC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF101639),
          scaffoldBackgroundColor: Color(0xFF0E0F20),
      ),
      home: Inputpage(),
    );
  }
}




