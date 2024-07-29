import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'button.dart';
class results extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
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
                    Text('NORMAL',
                    style: kresultTitleStyle,),

                    Text('18.6',
                    style: kBMIresultTextStyle,),


                    Text('Your BMI result is quite low,you should eat more!',
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
