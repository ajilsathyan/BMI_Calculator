import 'package:bmi_app/actualFunction/bmi_Calculator_brain.dart';
import 'package:bmi_app/contants/contants.dart';
import 'package:bmi_app/screens/calculatedValue.dart';
import 'package:bmi_app/widgets/bottomButtun.dart';
import 'package:bmi_app/widgets/customCards.dart';
import 'package:bmi_app/widgets/customIcons.dart';
import 'package:bmi_app/widgets/insideContents.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender selectedGender = Gender.male;
  int height = 180;
  int weigth = 55;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Cards(
                      color: selectedGender == Gender.male
                          ? activeColor
                          : inactiveColor,
                      cardChild: buildInSideItem(
                          icon: FontAwesomeIcons.mars, text: "Male"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Cards(
                      color: selectedGender == Gender.female
                          ? activeColor
                          : inactiveColor,
                      cardChild: buildInSideItem(
                          icon: FontAwesomeIcons.venus, text: "Female"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("HEIGHT", style: textStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$height",
                        style: numberStyle,
                      ),
                      Text(
                        "cm",
                        style: TextStyle(color: Color(0xFF8D8E98)),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Colors.white,
                        trackHeight: 1,
                        thumbColor: Color(0xFFEB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20),
                        overlayColor: Color(0x55EB1555)),
                    child: Slider(
                      min: 30.0,
                      max: 220.0,
                      label: "$height",
                      value: height.toDouble(),
                      onChanged: (double i) {
                        setState(() {
                          height = i.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Cards(
                    color: activeColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: textStyle,
                        ),
                        Text(
                          "$weigth",
                          style: numberStyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedButton(
                                onpressed: () {
                                  setState(() {
                                    if (weigth <= 10) {
                                      weigth++;
                                    }
                                    weigth--;
                                  });
                                },
                                icon: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              RoundedButton(
                                onpressed: () {
                                  setState(() {
                                    if (weigth <= 150 - 1) {
                                      weigth++;
                                    }
                                  });
                                },
                                icon: Icon(FontAwesomeIcons.plus,
                                    color: Colors.white),
                              )
                            ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Cards(
                    color: activeColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: textStyle,
                        ),
                        Text(
                          "$age",
                          style: numberStyle,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundedButton(
                                icon: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                onpressed: () {
                                  setState(() {
                                    if (age <= 10) {
                                      age++;
                                    }
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              RoundedButton(
                                onpressed: () {
                                  setState(() {
                                    if (age <= 100 - 1) {
                                      age++;
                                    }
                                  });
                                },
                                icon: Icon(FontAwesomeIcons.plus,
                                    color: Colors.white),
                              )
                            ])
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              
              BmiCalcultor calcultor =BmiCalcultor(height: height, weight: weigth);
              print(height);
              print(weigth);
              setState(() {
               String nm= calcultor.getResult();
               print(nm);
               String inP= calcultor.getInterPretation();
               print(inP);
                calcultor.bmiCalculation();
              });
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return TotalValue(
                  bmiResult: calcultor.bmiCalculation(),
                  bmiResultText: calcultor.getResult(),
                  bmiInterPretation: calcultor.getInterPretation(),
                );
              }));
            },
            title: "CALCULATE",
            buttonHeight: 65,
          )
        ],
      ),
    );
  }
}


