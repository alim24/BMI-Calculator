
import 'package:bmi_calculator/home_page.dart';
import 'package:bmi_calculator/mapping%20image%20and%20loading/mapping_image_3.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'mapping image and loading/mapping_image_1.dart';
import 'presentation/test/test.dart';
import 'presentation/test/test.dart';

class AppWidget extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MappingImage3(),
      debugShowCheckedModeBanner: true,
    );
  }
}