import 'package:flutter/material.dart';

void main() {
  runApp(BMI_CALCUATOR());
}

class BMI_CALCULATOR extends StatefulWidget {
  const BMI_CALCULATOR({super.key});

  @override
  State<BMI_CALCULATOR> createState() => _BMI_CALCULATORState();
}

class _BMI_CALCULATORState extends State<BMI_CALCULATOR> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: InputPage(),
    );
  }
}

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Text("HERE TEXT WILL GO"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}



