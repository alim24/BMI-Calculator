import 'dart:developer';

import 'package:bmi_calculator/domain/model/gender_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<GenderDataModel> genderDataModel = List();

  void fillDataToList() {
    genderDataModel.add(GenderDataModel(
        isSelected: false, label: "MALE", image: 'assets/icons/male.svg'));
    genderDataModel.add(GenderDataModel(
        isSelected: false, label: "FEMALE", image: 'assets/icons/female.svg'));
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
          children: genderDataModel
              .map(
                (value) => SvgPicture.asset(
                  value.image,
                  color: Colors.amber,
                ),
              )
              .toList()),
    ));
  }
}

class GenderDataModel {
  final String image;
  final String label;
  final bool isSelected;

  const GenderDataModel({
    @required this.image,
    this.label,
    this.isSelected,
  });
}
