import 'package:bmi_calculator/domain/model/gender_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentValue = 300;
  double weightCount = 60;
  double ageCount = 40;

  List<GenderDataModel> genderDataModel = List();

  void fillDataToList() {
    genderDataModel.add(GenderDataModel(
        isSelected: false, label: "MALE", image: 'assets/icons/male.svg'));
    genderDataModel.add(GenderDataModel(
        isSelected: false, label: "FEMALE", image: 'assets/icons/female.svg'));
  }

  @override
  void initState() {
    // fill data gender to list genderDataModel
    fillDataToList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI CALCULATOR"),
        backgroundColor: Color(0xff12163A),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: genderDataModel.map(
                  (gender) {
                    return Expanded(
                      child: InkWell(
                        onTap: () {
                          print(gender.label + " diklik");
                        },
                                              child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color(0xff272A4D),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  gender.image,
                                  height: 80,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  gender.label,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 200,
              decoration: BoxDecoration(
                  color: Color(0xff272A4D),
                  borderRadius: BorderRadius.circular(6)),
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(currentValue.toStringAsFixed(0),
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text("cm",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  Slider(
                    value: currentValue,
                    onChanged: (double value) {
                      setState(() {
                        currentValue = value;
                      });
                    },
                    min: 0,
                    max: 300,
                    label: currentValue.toStringAsFixed(0),
                    activeColor: Colors.white,
                    inactiveColor: Colors.pink,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 220,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xff232849),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("WEIGHT",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text(weightCount.toStringAsFixed(0),
                            style: TextStyle(
                                fontSize: 60,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  // mengurangi nilai weight
                                  weightCount = weightCount - 1;
                                  if (weightCount < 1) {
                                    weightCount = 1;
                                  }
                                  setState(() {});
                                  print(weightCount.toString());
                                },
                                color: Color(0xff373F74),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                                height: 40,
                                shape: CircleBorder(),
                              ),
                            ),
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    weightCount = weightCount + 1;
                                  });

                                  print(weightCount.toString());
                                },
                                color: Color(0xff373F74),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                                height: 40,
                                shape: CircleBorder(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xff232849),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("AGE",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text(ageCount.toStringAsFixed(0),
                            style: TextStyle(
                                fontSize: 60,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  // mengurangi nilai age
                                  ageCount = ageCount - 1;
                                  if (ageCount < 1) {
                                    ageCount = 1;
                                  }
                                  setState(() {});
                                  print(ageCount.toString());
                                },
                                color: Color(0xff373F74),
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                                height: 40,
                                shape: CircleBorder(),
                              ),
                            ),
                            Expanded(
                              child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    ageCount = ageCount + 1;
                                  });

                                  print(ageCount.toString());
                                },
                                color: Color(0xff373F74),
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                                height: 40,
                                shape: CircleBorder(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(
                splashColor: Colors.pink[200],
                hoverColor: Colors.green,
                minWidth: 150,
                onPressed: () {
                  print("Height :" + currentValue.toStringAsFixed(0));
                  print("Weight :" + weightCount.toStringAsFixed(0));
                  print("Age :" + ageCount.toStringAsFixed(0));
                },
                color: Colors.pink,
                child: Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                height: 60,
                elevation: 0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
            )
          ],
        ),
      ),
    );
  }
}
