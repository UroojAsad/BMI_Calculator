import 'dart:ui';
import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeContainerColor =Color(0xFF111428);
const bottomContainerColor= Color(0xFFEB1555);

class InputPage extends StatefulWidget {


  @override
  State<InputPage> createState() => _State();
}

class _State extends State<InputPage> {
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
       Expanded(child: reuseable_card(colour: activeContainerColor,)),
       Expanded(child: reuseable_card(colour: activeContainerColor,)),
     ],
    ) ),
    Expanded(child:reuseable_card(colour: activeContainerColor,) ),
    Expanded(child: Row(
      children: [
        Expanded(child: reuseable_card(colour: activeContainerColor),),
        Expanded(child:reuseable_card(colour: activeContainerColor,) ),
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

class reuseable_card extends StatelessWidget {
 final Color colour;
 final  Widget  cardchild;

 reuseable_card({  required this.colour , required this.cardchild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}




