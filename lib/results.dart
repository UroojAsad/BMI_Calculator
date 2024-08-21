import 'dart:core';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'button.dart';
class results extends StatelessWidget {

  final String bmiresult;
  final String resultText;
  final String  interpretation;
  final TextStyle textStyle;

results({required this.bmiresult , required this.resultText , required this.interpretation, required this.textStyle});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text('Your Result',
              style: kResultTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
              child:reuseable_card(
                colour: kactiveContainerColor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),
                    style:textStyle,),

                    Text(bmiresult,
                    style: kBMIresultTextStyle,),


                    Text(interpretation,
                    style: kbodyTextStyle,
                    textAlign: TextAlign.center,),
                  ],
                ),
              )
          ),
          large_end_button(ontap: (){
            Navigator.pop(context);
          }, TitleText: 'RE_CALCULATE'),
        ],
      ),
    );
  }
}
