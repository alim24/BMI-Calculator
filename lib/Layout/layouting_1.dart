import 'package:flutter/material.dart';

class Layouting1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(children: [
        Container(
          color: Colors.green,
          height: 100,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
              flex: 4,
              child:
                  Container(color: Colors.yellow, child: Text("Photo Profile")),
            ),
            Column(children: [
              Expanded(
                  flex: 4,
                  child: Container(
                      height: 40,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("CodeFirst"),
                            Text("BTN Message"),
                          ])))
            ]),
            Column(children: [
              Expanded(
                  flex: 4,
                  child: Container(
                      height: 40,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Option"),
                            Text("Following"),
                          ])))
            ]),
          ]),
        ),
        Container(
          height: 100,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(children: [
              Expanded(
                  flex: 4,
                  child: Container(
                      height: 10,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("username"),
                            Text("description"),
                            Text("test desc"),
                            Text("pasang backlash"),
                            Text("followed by CodeFirst"),
                          ])))
            ]),
          ]),
        ),
        Container(
          height: 50,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Highlight 1")],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Highlight 2")],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Highlight 3")],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Highlight 4")],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Highlight 5")],
              ),
            )
          ]),
        ),
        Container(
          height: 70,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                flex: 4,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("16 Post")])),
            Expanded(
                flex: 4,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("200 Followers")])),
            Expanded(
                flex: 4,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("37 Following")])),
          ]),
        ),
        Container(
          height: 70,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Expanded(
                flex: 4,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Category 1")])),
            Expanded(
                flex: 4,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Category 2")])),
            Expanded(
                flex: 4,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Category 3")])),
          ]),
        ),
        Container(
          color: Colors.white,
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                  width: 30,
                )),
            SizedBox(
              width: 5,
              height: 5,
            ),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                  width: 30,
                )),
            SizedBox(
              width: 5,
              height: 5,
            ),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.red,
                  width: 30,
                )),
          ]),
        ),
        Container(
          color: Colors.white,
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.blue,
                  width: 30,
                )),
            SizedBox(
              width: 5,
              height: 5,
            ),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.blue,
                  width: 30,
                )),
            SizedBox(
              width: 5,
              height: 5,
            ),
            Expanded(
                flex: 4,
                child: Container(
                  color: Colors.blue,
                  width: 30,
                )),
          ]),
        ),
      ])),
    );
  }
}
