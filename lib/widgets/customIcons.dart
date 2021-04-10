

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.icon, required this.onpressed});
  final Function onpressed;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      elevation: 6,
      onPressed: () => onpressed(),
      child: icon,
    );
  }
}