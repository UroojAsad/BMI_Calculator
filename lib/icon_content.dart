import 'package:flutter/material.dart';

const lableTextStyle=TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

class Icon_Content extends StatelessWidget {
  final IconData icon;
  final String lable;
  Icon_Content({ required this.icon , required this .lable});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
          size: 80,),
        SizedBox(
          height: 15.0,),
        Text(
          lable,
          style: lableTextStyle )
      ],
    );
  }
}