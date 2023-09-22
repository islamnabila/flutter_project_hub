import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool? _checkbox, _listTileCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.deepPurple,
              tristate: true,
              value: _checkbox,
              onChanged: (value) {
                setState(() {
                  _checkbox = value;
                });
              }),
          CheckboxListTile(
            tristate: true,
              title: Text("Top Product"),
              value: _listTileCheckbox,
              onChanged: (value) {
                setState(() {
                  _listTileCheckbox = value;
                });
              },
            controlAffinity: ListTileControlAffinity.leading,
          )
        ],
      ),
    );
  }
}
