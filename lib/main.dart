import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMI_CALCULATOR ());
}



class BMI_CALCULATOR extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
    theme: ThemeData.dark().copyWith(
primaryColor: Color(0xFF0A0D22),
scaffoldBackgroundColor: Color(0xFF0A0D22)
),
home: InputPage(),
);
  }
}





