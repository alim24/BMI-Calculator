import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton.icon(
              onPressed: () {},
              textColor: Colors.white,
              color: Colors.black,
              icon: Icon(Icons.upload_outlined),
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              label: Text("Confirm"),
            ),
            RaisedButton.icon(
              onPressed: () {},
              textColor: Colors.white,
              color: Colors.purple,
              icon: Icon(Icons.upload_outlined),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              label: Text("Confirm"),
            ),
            RaisedButton.icon(
              onPressed: () {},
              textColor: Colors.black,
              color: Colors.yellow,
              icon: Icon(Icons.upload_outlined),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              label: Text("Confirm"),
            ),
            MaterialButton(
                onPressed: () {},
                child: Container(
                    child: Row(children: [
                  Expanded(
                      flex: 8,
                      child: FlatButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Text("Confirm"))),
                  Expanded(
                    flex: 4,
                    child: RaisedButton.icon(
                      onPressed: () {},
                      textColor: Colors.white,
                      color: Colors.pink,
                      icon: Icon(Icons.upload_outlined),
                      label: Text(""),
                    ),
                  )
                ]))),
            MaterialButton(
              onPressed: () {},
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("Confirm"),
                  ),
                ),
                Container(
                    padding:EdgeInsets.all(6),
                    child: Icon(Icons.upload_outlined, color: Colors.white,),
                      color: Colors.pink,
                    )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
