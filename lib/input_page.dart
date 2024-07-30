import 'dart:core';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';
import 'constants.dart';
import  'results.dart';
import 'button.dart';
import 'bmi_brain.dart';

int age=19;
int weight=80;
int height=180;
enum Gender{
  male,
female
}

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _State();
}

class _State extends State<InputPage> {
   Gender selectedgender = Gender.male;


  @override

  Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
  centerTitle: true,
elevation: 2,
title: Text('BMI Calculator'),
),
body: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Expanded(child:Row(
     children: [
       Expanded(
           child: GestureDetector(
             onTap: (){
               setState(() {
                 selectedgender=Gender.male;
               });
             },
             child: reuseable_card(
                      colour:selectedgender==Gender.male? kactiveContainerColor:kinactiveContainerColor ,
                    cardchild: Icon_Content(
                      icon: FontAwesomeIcons.mars,
             lable: 'MALE',
                    ),

                    ),
           )),
       Expanded(child: GestureDetector(
         onTap: (){
           setState(() {
            selectedgender=Gender.female;
           });
    },

         child: reuseable_card(
           colour: selectedgender==Gender.female?kactiveContainerColor:kinactiveContainerColor,
             cardchild: Icon_Content(
               icon: FontAwesomeIcons.venus,
               lable: 'FEMALE',
             ),),
       ),),
     ],
    ) ),
    Expanded(child:reuseable_card(
      colour: kactiveContainerColor,
      cardchild: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('HEIGHT',
          style: klableTextStyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
            Text(height.toString(),
            style: knumberTextStyle),
            Text('cm',style: klableTextStyle,)
          ],),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
    inactiveTrackColor:  Color(0xFF8D8E98),
             activeTrackColor: Colors.white,
              thumbColor: Color(0xFFEB1555),
              overlayColor: Color(0x28EB1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
            ),
            child: Slider(value: height.toDouble(),
                min:120,
                max:220,


                onChanged: (double newValue){
            setState(() {
              height=newValue.round();
            });
                }),
          )
        ],
      )

    ) ),

    Expanded(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: reuseable_card(
            colour: kactiveContainerColor,
            cardchild: Column(
              children: [
                Text('WEIGHT',
                  style: klableTextStyle,),
                Text(weight.toString(),
                  style: knumberTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF4C4F5E),
                        ),
                        onPressed: (){
                          setState(() {
                            weight--;
                          });
                        },
                        child: Icon(FontAwesomeIcons.minus)),
                    SizedBox(width: 10,),

                    TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF4C4F5E),

                        ),
                        onPressed: (){
                          setState(() {
                            weight++;
                          });
                        },
                        child: Icon(Icons.add))
                  ],)
              ],
            )
        ),
        ),
        Expanded(child:reuseable_card(
          colour: kactiveContainerColor,
            cardchild: Column(
              children: [
                Text('Age',
                style: klableTextStyle,),
                Text(age.toString(),
                style: knumberTextStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFF4C4F5E),
                    ),
                      onPressed: (){
                      setState(() {
                        age--;
                      });
                      },
                      child: Icon(FontAwesomeIcons.minus)),
                    SizedBox(width: 10,),

                    TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0xFF4C4F5E),

                        ),
                        onPressed: (){
                          setState(() {
                            age++;
                          });
                    },
                        child: Icon(Icons.add))
                ],)
              ],
            )) ),
      ],
    )),
    large_end_button(
      ontap:(){

        calculateBrain calc=calculateBrain(height: height, weight: weight);

        Navigator.push(context, MaterialPageRoute(builder:(context){
          return results(
              bmiresult: calc.calculatrBMI(),
              resultText: calc.getresult(),
              interpretation: calc.getInterpretation());
        }));
      },


       TitleText: 'CALCULATE',
    )
  ],
)
);
}
  }










