import 'package:flutter/material.dart';
import 'constants.dart';

class large_end_button extends StatelessWidget {

  final VoidCallback ontap;
  final String TitleText;

  large_end_button({ required this.ontap, required this.TitleText});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        child: Center(
          child: Text(TitleText,
              style: klargeButtonTextStyle),
        ),
        width: double.infinity,
        height: kbottomContainerHeight,
        //padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        color: kbottomContainerColor ,
      ),
    );
  }
}