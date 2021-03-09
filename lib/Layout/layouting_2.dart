import 'package:flutter/material.dart';

class Layouting2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(6),
                    color: Colors.pink
                    ),
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.sports_baseball,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Text("Icon 1")
            ]),
            Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.pink,

                ),
                padding: EdgeInsets.all(20),
        
                child: Icon(
                  Icons.sports_baseball,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Text("Icon 2")
            ]),
            Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.pink,
                ),
                padding: EdgeInsets.all(20),
             
                child: Icon(
                  Icons.sports_baseball,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Text("Icon 3")
            ]),
            Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.pink,
                ),
                padding: EdgeInsets.all(20),
                
                child: Icon(
                  Icons.sports_baseball,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Text("Icon 4")
            ]),
          ],
        ),
      ),
    );
  }
}
