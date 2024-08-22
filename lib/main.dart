import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMI_CALCULATOR ());
}



class BMI_CALCULATOR extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
     theme: ThemeData.light().copyWith(
         appBarTheme: AppBarTheme(
           backgroundColor: Color(0xFF00007C), // Set AppBar color to green
         ),
 primaryColor:Color(0xFF92BBFF),
scaffoldBackgroundColor: Color(0xFF92BBFF)
),
home: InputPage(),
);
  }
}





