
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Widget cardChild;
  final Color color;

  Cards({required this.cardChild,required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: MediaQuery.of(context).size.width-220,  
       
        child: cardChild, 
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10), 
        decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10.0)),
      );
  } 
}