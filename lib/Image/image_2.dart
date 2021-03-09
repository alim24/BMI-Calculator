import 'package:flutter/material.dart';

class Image2 extends StatefulWidget {
  @override
  _Image2State createState() => _Image2State();
}

class _Image2State extends State<Image2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
              child: Container(
          child: Image.network(
            "https://unsplash.com/photos/dghXp-q5qxE/download?force=true",
            width: 200,
            fit: BoxFit.fitHeight,
            loadingBuilder: (ctx, child, loadingProgress) {
              if (loadingProgress == null) {
                // tampilkan data yang sebenarnya
                return child;
              } else {
                // tampilkan loading
                return LinearProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
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
        ),
      ),
      Expanded(
              child: Container(
          child: Image.network(
            "https://unsplash.com/photos/6-txhuylRGA/download?force=true",
            width: 200,
            fit: BoxFit.fitHeight,
            loadingBuilder: (ctx, child, loadingProgress) {
              if (loadingProgress == null) {
                // tampilkan data yang sebenarnya
                return child;
              } else {
                // tampilkan loading
                return LinearProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
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
        ),
      ),
      Expanded(
              child: Container(
          child: Image.network(
            "https://unsplash.com/photos/o9qw2WHKKFs/download?force=true",
            width: 200,
            fit: BoxFit.fitHeight,
            loadingBuilder: (ctx, child, loadingProgress) {
              if (loadingProgress == null) {
                // tampilkan data yang sebenarnya
                return child;
              } else {
                // tampilkan loading
                return LinearProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes
                      : null,
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
        ),
      ),
    ])));
  }
}
