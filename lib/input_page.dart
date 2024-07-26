import 'dart:ui';

import 'package:flutter/material.dart';

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
       Expanded(child: reuseable_card(colour: Color(0xFF111428),)),
       Expanded(child: reuseable_card(colour: Color(0xFF111428),)),
     ],
    ) ),
    Expanded(child:reuseable_card(colour: Color(0xFF111428),) ),
    Expanded(child: Row(
      children: [
        Expanded(child: reuseable_card(colour: Color(0xFF111428),)),
        Expanded(child:reuseable_card(colour: Color(0xFF111428),) ),
      ],
    )),
  ],
)
);
}
  }

class reuseable_card extends StatelessWidget {
 final Color colour;

 reuseable_card({  required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}




