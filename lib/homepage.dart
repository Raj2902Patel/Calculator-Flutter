import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $sum",
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: doAdd,
                  child: Text("+"),
                  color: Colors.blueAccent,
                ),
                MaterialButton(
                  onPressed: doSub,
                  child: Text("-"),
                  color: Colors.blueAccent,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: doMul,
                  child: Text("*"),
                  color: Colors.blueAccent,
                ),
                MaterialButton(
                  onPressed: doDiv,
                  child: Text("/"),
                  color: Colors.blueAccent,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: doClear,
                  child: Text("Clear"),
                  color: Colors.blueAccent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
