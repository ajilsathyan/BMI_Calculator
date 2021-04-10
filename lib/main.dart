import 'package:flutter/material.dart';

import 'screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0D22),
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
          accentColor: Color(0xFFe5005d)),
      home: MyHomePage(),
    );
  }
}
