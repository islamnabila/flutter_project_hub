import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/navbar.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme: ThemeData(

      ),

    );
  }
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBarPage(),
      appBar: AppBar(
        title:Text("Navigation Drawer") ,
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(child: Text("Hello! Whats Up", style: TextStyle(color: Colors.lightGreen, fontSize: 35, fontWeight: FontWeight.bold),)),
    );
  }
}
