import 'package:flutter/material.dart';

class MappingImage3 extends StatefulWidget {
  @override
  _MappingImage3State createState() => _MappingImage3State();
}

class _MappingImage3State extends State<MappingImage3> {
  List<DataClass> dataClass = List<DataClass>();

  @override
  void initState() {
    initDataClass();
    super.initState();
  }

  void initDataClass() {
    dataClass.add(DataClass(
        'https://unsplash.com/photos/IxlY2KB4Krs/download?force=true',
        "lorem ipsum"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
            dataClass
                .map((nilai) => buildImage(nilai))
                .toList()
        ),
      ),
    );
  }

  Container buildImage(DataClass nilai) {
    return Container(
      child: Image.network(
                      nilai.image,
                    ),
    );
  }
}

class DataClass {
  DataClass(this.image, this.text);
  final String image;
  final String text;
}
