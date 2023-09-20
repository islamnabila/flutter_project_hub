import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/login.dart';
import 'package:flutter_project_hub/rolePage.dart';

class WellcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
               Center(
                 child: Container(
                   margin: EdgeInsets.only(top: 120),
                  color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Rectangle.png",),
                        SizedBox(height: 15,),
                        Text("A milestone to reach your dream", style: TextStyle(fontSize: 17),),
                        SizedBox(
                          height: 100,
                        ),
                        SizedBox(
                          height: 45,
                          width: 170,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )
                            ) ,
                              onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),));
                              },
                              child: Text("Login", style: TextStyle(fontSize: 20),)),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(
                          height: 45,
                          width: 170,
                          child: OutlinedButton(
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(width: 1, color: Colors.blue),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  )
                              ) ,
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>RolePage(),));
                              },
                              child: Text("Registration", style: TextStyle(fontSize: 20),)),
                        )
                      ],
                    ),
                  ),
               ),





          ],
        ),
      ),

    );
  }

}