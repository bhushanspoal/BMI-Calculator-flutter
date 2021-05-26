import 'package:flutter/material.dart';
class FirstCard extends StatelessWidget {
  // ignore: non_constant_identifier_names
  FirstCard({@ required this.icon, @required this.Icontext});
  final  IconData icon;
  // ignore: non_constant_identifier_names
  final String Icontext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 90,
        ),
        SizedBox(
          height: 15,
        ),
        Text(Icontext,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFFA0A3B2),
          ),)
      ],
    );
  }
}
