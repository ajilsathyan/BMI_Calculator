import 'package:bmi_app/widgets/bottomButtun.dart';
import 'package:flutter/material.dart';

class TotalValue extends StatelessWidget {
  final String bmiResult;
  final String bmiResultText;
  final String bmiInterPretation;

  const TotalValue(
      {required this.bmiResult,
      required this.bmiResultText,
      required this.bmiInterPretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI VALUE ",
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text( 
            "Your Result",
            style: TextStyle(fontSize: 33),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Color(0xFF141736),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "$bmiResultText", 
                    style: TextStyle(color: Color(0xFF24D876), fontSize: 20),
                  ),
                  Text(
                    "$bmiResult", 
                    style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                  ),
                  Text("$bmiInterPretation",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,) 
                ],
              ),
            ),
          ),
          BottomButton(
            title: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
            buttonHeight: 100,
          ),
        ],
      ),
    );
  }
}
