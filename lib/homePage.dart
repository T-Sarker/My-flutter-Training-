import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1, num2, result = 0;
  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");
  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = (num1 ~/ num2);
    });
  }

  void clearAll() {
    setState(() {
      num1 = 0;
      num2 = 0;
      result = 0;
      t1.text = '';
      t2.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Output:$result',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Insert 1st number',
                    labelText: 'Number 1',
                    focusedBorder: OutlineInputBorder(),
                  ),
                  controller: t1,
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 40)),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Insert 2nd number',
                      labelText: 'Number 2',
                      focusedBorder: OutlineInputBorder()),
                  controller: t2,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: doAdd,
                          child: Text(
                            '+',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.bold),
                          ),
                          color: Colors.lightBlueAccent,
                        ),
                        MaterialButton(
                          onPressed: doSub,
                          child: Text(
                            '-',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22.0),
                          ),
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MaterialButton(
                          onPressed: doMul,
                          child: Text(
                            '*',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.bold),
                          ),
                          color: Colors.lightBlueAccent,
                        ),
                        MaterialButton(
                          onPressed: doDiv,
                          child: Text(
                            '/',
                            style: TextStyle(
                                fontSize: 22.0, fontWeight: FontWeight.bold),
                          ),
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    MaterialButton(
                      onPressed: clearAll,
                      child: Text(
                        'Clear',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w400),
                      ),
                      color: Colors.lightBlueAccent,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
