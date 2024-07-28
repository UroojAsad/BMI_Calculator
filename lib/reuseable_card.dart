import 'package:flutter/material.dart';


class reuseable_card extends StatelessWidget {
  final Color colour;
  final  Widget  cardchild;

  reuseable_card({  required this.colour ,  required this.cardchild});

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