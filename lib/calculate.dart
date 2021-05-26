import 'package:bmi_calc/Inputpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusablecard.dart';
// ignore: camel_case_types
class calculate extends StatelessWidget {

  calculate({@required this.bmiresult ,@required this.bmiresult_1 , @required this.bmiresult_2});
  final String bmiresult;
  final String bmiresult_1;
  final String bmiresult_2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Expanded(
           child:  Container(
             padding: EdgeInsets.only(top: 20),
             child: Text(
               'Your Result',
               style: TextStyle(
                 fontSize: 50.0,
                 fontWeight: FontWeight.bold,
               ),
             ),
           ),
         ),
         Expanded(
           flex: 5,
             child: Container(
             child: reusablecard(colour: MajorColour,
             cardChild: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 Text(bmiresult_1,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 30,
                   color: Colors.teal,
                 ),
                 ),//to show if the bmi is normal or not
                 Text(bmiresult,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 100,
                   fontWeight: FontWeight.bold,
                 ),
                 ),//to show the BMI value
                 Text(bmiresult_2,
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 30,
                   ),
                 ), //this is for the comment
               ],
             ),
              ),
         ),
         ),
         Container(
           height: 60,
           margin: EdgeInsets.only(top: 5),
           width: double.infinity,
           decoration: BoxDecoration(
             color: Color(0xFFFF0067),
           ),
           child: GestureDetector(
             onTap: (){
               Navigator.pop(context);
             },
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text('RE-CALCULATE',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 30,
                     fontWeight: FontWeight.w400,
                   ),
                 ),
               ],
             ),
           ),
         ),
       ],
     ),
    )
  ;}
}
