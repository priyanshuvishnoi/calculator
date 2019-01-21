import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();
  void doAddition() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white12,
      appBar: new AppBar(
        title: new Text("Calculator"),
        centerTitle: true,
        //backgroundColor: Colors.blue,
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $sum",
              style: new TextStyle(
                fontSize: 40,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            new Padding(padding: new EdgeInsets.only(bottom: 50.0)),
            new TextField(
              keyboardType: TextInputType.number,
              controller: t1,
              decoration: new InputDecoration(
                hintText: "Enter Number 1",
                hintStyle: new TextStyle(
                  color: Colors.teal,
                ),
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              controller: t2,
              decoration: new InputDecoration(
                  hintText: "Enter Number 2",
                  hintStyle: new TextStyle(color: Colors.teal)),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  onPressed: doAddition,
                  child: new Text(
                    "+",
                    style: new TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  color: Colors.teal,
                  splashColor: Colors.white,
                ),
                new MaterialButton(
                  onPressed: doSub,
                  child: new Text(
                    "-",
                    style: new TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  color: Colors.teal,
                  splashColor: Colors.white,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  onPressed: doMul,
                  child: new Text(
                    "*",
                    style: new TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  color: Colors.teal,
                  splashColor: Colors.white,
                ),
                new MaterialButton(
                  onPressed: doDiv,
                  child: new Text(
                    "/",
                    style: new TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  color: Colors.teal,
                  splashColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
