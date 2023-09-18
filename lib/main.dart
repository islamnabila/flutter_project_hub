import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/login.dart';
import 'package:flutter_project_hub/registerGurdian.dart';
import 'package:flutter_project_hub/registerSchool.dart';
import 'package:flutter_project_hub/registerStudent.dart';
import 'package:flutter_project_hub/rolePage.dart';
import 'package:flutter_project_hub/student_home.dart';
import 'package:flutter_project_hub/topic.dart';
import 'package:flutter_project_hub/welcome.dart';

import 'exercise.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WellcomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.pink.shade300,
      body: Container(

      ),

    );
  }

}