import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuseable_card.dart';


const bottomContainerHeight = 80.0;
const activeContainerColor =Color(0xFF1D1E33);
const inactiveContainerColor =Color(0xFF111328);
const bottomContainerColor= Color(0xFFEB1555);

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _State();
}

class _State extends State<InputPage> {
  Color maleCardColor = inactiveContainerColor;
  Color femaleCardColor = inactiveContainerColor;

  void updateColor(int gender){
    //male=1
if(gender==1){
  if(maleCardColor==inactiveContainerColor)
    {maleCardColor=activeContainerColor;
    femaleCardColor=inactiveContainerColor;}
  else
    {maleCardColor=inactiveContainerColor;}
}
//female=2
    if(gender==2){
      if(femaleCardColor==inactiveContainerColor)
      {femaleCardColor=activeContainerColor;
      maleCardColor=inactiveContainerColor;}
      else
      {femaleCardColor=inactiveContainerColor;}
    }
  }

  @override

  Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
  centerTitle: true,
elevation: 2,
title: Text('BMI Calculator'),
),
body: Column(
  children: [
    Expanded(child:Row(
     children: [
       Expanded(
           child: GestureDetector(
             onTap: (){
               setState(() {
                 updateColor(1);
               });
             },
             child: reuseable_card(
                      colour:maleCardColor ,
                    cardchild: Icon_Content(
                      icon: FontAwesomeIcons.mars,
             lable: 'MALE',
                    ),

                    ),
           )),
       Expanded(child: GestureDetector(
         onTap: (){
           setState(() {
             updateColor(2);
           });
    },

         child: reuseable_card(
           colour: femaleCardColor,
             cardchild: Icon_Content(
               icon: FontAwesomeIcons.venus,
               lable: 'FEMALE',
             ),),
       ),),
     ],
    ) ),
    Expanded(child:Row(
      children: [
        Expanded(
            child: reuseable_card(
              colour: activeContainerColor,
              cardchild: Column()

            )),
      ],
    ) ),

    Expanded(child: Row(
      children: [
        Expanded(child: reuseable_card(
            colour: activeContainerColor,
            cardchild: Column()),),
        Expanded(child:reuseable_card(
          colour: activeContainerColor,
            cardchild: Column()) ),
      ],
    )),
    Container(
      width: double.infinity,
      height: bottomContainerHeight,
      margin: EdgeInsets.only(top: 10.0),
      color: bottomContainerColor ,
    )
  ],
)
);
}
  }








