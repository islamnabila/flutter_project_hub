import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  String? valueChoose;

  List<String> listItem = [
    "Red",
    "Green",
    "Pink",
    "Yellow",
    "Blue"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown Button"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(25)
            ),
            child: DropdownButton(
              hint: Text("Select Item"),
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 35,
              dropdownColor: Colors.white60,
              isExpanded: true,

              onChanged: (String? newValue){
                setState(() {
                  valueChoose= newValue!;
                });
              },
              value: valueChoose,
              items: listItem.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList()
            ),
          ),
        ),
      ),
    );
  }
}

