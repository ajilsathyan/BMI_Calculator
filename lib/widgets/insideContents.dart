   import 'package:bmi_app/contants/contants.dart';
import 'package:flutter/cupertino.dart';

Column buildInSideItem({required IconData icon, required String text}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 60,
        ),
        SizedBox(height: 8.0,),
        Text(
          text,
          style:textStyle,
        )
      ],
    );
  }