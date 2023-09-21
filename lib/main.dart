import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _switch? _dark : _light,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Light and Dark Theme"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dark Mode", style: TextStyle(color: Colors.yellowAccent,
            fontSize: 25, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Switch(value: _switch, onChanged: (_newvalue){
              setState(() {
                _switch = _newvalue;
              });

            }
            )

          ],
        ),
      ),
      ),
    );
  }
}

