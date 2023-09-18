import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/registerGurdian.dart';
import 'package:flutter_project_hub/registerSchool.dart';
import 'package:flutter_project_hub/registerStudent.dart';

class RolePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 80),
                child: Image.asset("assets/images/role.png")
              ),
            ),
            SizedBox(height: 30,),
            Text("What is your role?", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
            SizedBox(height: 70,),
            SizedBox(
              height: 50,
              width: 220,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ) ,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage(),));
                  },
                  child: Text("Student", style: TextStyle(fontSize: 16),)),
            ),
            SizedBox(height: 15,),
            SizedBox(
              height: 50,
              width: 220,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.cyan.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ) ,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterGurdian(),));
                  },
                  child: Text("Teacher", style: TextStyle(fontSize: 16),)),
            ),
            SizedBox(height: 15,),
            SizedBox(
              height: 50,
              width: 220,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pinkAccent.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      )
                  ) ,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterSchoolPage(),));
                  },
                  child: Text("School", style: TextStyle(fontSize: 16),)),
            ),
          ],

        ),
      ),

    );
  }

}