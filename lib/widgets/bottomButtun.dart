import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final double buttonHeight;
  final Function onTap;
  const BottomButton(
      {required this.buttonHeight, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: EdgeInsets.only(top: 5),
        height: buttonHeight,
        color: Color(0xFFEB1555),
        child: Center(
          child: Text(
            "$title",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
