import 'package:flutter/material.dart';

class MappingImage1 extends StatefulWidget {
  @override
  _MappingImage1State createState() => _MappingImage1State();
}

class _MappingImage1State extends State<MappingImage1> {
  List<String> listImage = List();
  List<String> listImage2 = List();

  void fillDataToImageList() {
    listImage
        .add("https://unsplash.com/photos/IxlY2KB4Krs/download?force=true");
    listImage
        .add("https://unsplash.com/photos/IxlY2KB4Krs/download?force=true");
    listImage
        .add("https://unsplash.com/photos/IxlY2KB4Krs/download?force=true");
  }

  void fillDataToImageList2() {
    listImage2
        .add("https://unsplash.com/photos/psSssJl50lg/download?force=true");
    listImage2
        .add("https://unsplash.com/photos/psSssJl50lg/download?force=true");
    listImage2
        .add("https://unsplash.com/photos/psSssJl50lg/download?force=true");
  }

  @override
  void initState() {
    fillDataToImageList();
    fillDataToImageList2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Row(
                children: listImage
                    .map((img) => Expanded(
                            child: Container(
                          height: 100,
                          child: Image.network(
                            img,
                            fit: BoxFit.cover,
                            loadingBuilder: (ctx, child, loadingProgress) {
                              if (loadingProgress == null) {
                                // tampilkan data yang sebenarnya
                                return child;
                              } else {
                                // tampilkan loading
                                return SizedBox(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes
                                        : null,
                                  ),
                                  height: 10,
                                  width: 10,
                                );
                              }
                            },
                            errorBuilder: (context, obj, trace) {
                              return Text(
                                '😢',
                                style: TextStyle(fontSize: 40),
                              );
                            },
                          ),
                        )))
                    .toList()),
            Row(
                children: listImage2
                    .map((gbr) => Expanded(
                            child: Container(
                          height: 100,
                          child: Image.network(
                            gbr,
                            fit: BoxFit.cover,
                            loadingBuilder: (ctx, child, loadingProgress) {
                              if (loadingProgress == null) {
                                // tampilkan data yang sebenarnya
                                return child;
                              } else {
                                // tampilkan loading
                                return SizedBox(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes
                                        : null,
                                  ),
                                  height: 10,
                                  width: 10,
                                );
                              }
                            },
                            errorBuilder: (context, obj, trace) {
                              return Text(
                                '😢',
                                style: TextStyle(fontSize: 40),
                              );
                            },
                          ),
                        )))
                    .toList()),
          ],
        ),
      ),
    );
  }
}
