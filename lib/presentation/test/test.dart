import 'dart:developer';

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<String> names = List();

  void fillDataToList() {
    names.add("samsul");
    names.add("somat");
    names.add("bambang");
    names.add("joko");
    names.add("sutrisno");
    names.add("aidit");
  }

  @override
  void initState() {
    fillDataToList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(    
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
          names.map(
        (name) => Text(
          name,
          style: TextStyle(fontSize: 30),
        ),
      ).toList()), 
    ));
  }
}
