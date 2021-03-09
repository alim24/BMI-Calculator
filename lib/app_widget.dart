
import 'package:bmi_calculator/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demijijio',
      theme: ThemeData(),
      home: HomePage(),
      debugShowCheckedModeBanner: true,
    );
  }
}