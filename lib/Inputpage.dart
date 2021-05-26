import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'FirstCard.dart';
import 'calculate.dart';
import 'BMI_functionality.dart';
const MajorColour = Color(0xFF0F1437);
const MinorColour =  Color(0xFF111328);
enum Gender{
  male,female,
}
class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}
class _InputpageState extends State<Inputpage> {
   Gender selectedgender;
   double heightvalue=120;
   int numb = 20 ;
   int numb_1 = 5;
   // int increment(double numb){
   //    numb++;
   //
   // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedgender=Gender.male;
                    });
                  },
                    child: reusablecard(
                      colour: selectedgender==Gender.male ? MajorColour:MinorColour,
                      cardChild: FirstCard(icon: FontAwesomeIcons.mars, Icontext: 'MALE')
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                       selectedgender=Gender.female;
                      });
                    },
                    child: reusablecard(
                      colour: selectedgender==Gender.female ? MajorColour:MinorColour,
                    cardChild: FirstCard(icon: FontAwesomeIcons.venus, Icontext: 'FEMALE'),
                    ),
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: reusablecard(colour: MajorColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',
                style: TextStyle(
                  fontSize: 20,
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      '$heightvalue',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 50,
                      ),
                    ),
                    Text('cm',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                  ],
                ),
                Slider(value: heightvalue,
                    min: 120,
                    max: 220,
                    divisions: 100,
                    activeColor: Color(0xFFFF0067),//active colour is for the slider colour
                    label: heightvalue.round().toString(),
                    onChanged: (double value){
                         setState(() {    //
                          heightvalue=value;
                          });
                   },
                ),
              ],
            ),
            )
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusablecard(colour: MajorColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text('$numb',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 50,
                            ),
                          ),
                          Text('kg',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          ),
                        ],
                      ),
                      Row(
                        children:[
                          FlatButton(
                            color: Colors.blueGrey,
                            shape: CircleBorder(),
                            onPressed: (){
                              setState(() {
                                numb--;
                              });
                            },
                            child: Icon(Icons.horizontal_rule,
                            size: 50,),
                          ),
                          FlatButton(
                            color: Colors.blueGrey,
                            shape: CircleBorder(),
                            onPressed: (){
                              setState(() {
                                numb++;
                              });
                            },
                            child: Icon(Icons.add,
                            size: 50,
                            ),
                          ),
                        ]
                      ),
                    ],
                  ) ,
                  ),
                ),
                Expanded(
                  child: reusablecard(colour: MajorColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE',// the last container
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('$numb_1',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 50,
                            ),
                          ),
                        ],
                      ),
                      Row(
                          children:[
                            FlatButton(
                              color: Colors.blueGrey,
                              shape: CircleBorder(),
                              onPressed: (){
                                setState(() {
                                  numb_1--;
                                });
                              },
                              child: Icon(Icons.horizontal_rule,
                              size: 50,),
                            ),
                            FlatButton(
                              color: Colors.blueGrey,
                              shape: CircleBorder(),
                              onPressed: (){
                                setState(() {
                                  numb_1++;
                                });
                              },
                              child: Icon(Icons.add,
                              size: 50,),
                            )
                          ]
                      ),
                    ],
                  ) ,

                    )
                ),
              ],
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
                   BMI_brain BMI = BMI_brain(height_1: heightvalue, weight_1: numb);
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                    calculate(
                      bmiresult: BMI.Claculate(),
                      bmiresult_1: BMI.result(),
                      bmiresult_2: BMI.interpretation(),
                    ),
                    )
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CALCULATE',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),)
                    ],
                  ),
                ),
              ),
      ]
      ),
    );
  }
}


