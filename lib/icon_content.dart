import 'package:flutter/material.dart';
import 'constants.dart';


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
          style: klableTextStyle )
      ],
    );
  }
}