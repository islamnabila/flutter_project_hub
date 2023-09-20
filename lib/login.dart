import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/student_home.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 15, top: 15),
                child: Text("Login", style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),)),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Id", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                  SizedBox(height: 5,),
                  SizedBox(
                    width: 300,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )

                      ),

                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Role", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: SizedBox(
                            height: 40,
                            width: 90,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.orange.shade300,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    )
                                ) ,
                                onPressed: (){},
                                child: Text("Student", style: TextStyle(fontSize: 16),)),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            height: 40,
                            width: 90,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.cyan.shade300,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    )
                                ) ,
                                onPressed: (){},
                                child: Text("Teacher", style: TextStyle(fontSize: 16),)),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            height: 40,
                            width: 90,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.pink.shade200,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    )
                                ) ,
                                onPressed: (){},
                                child: Text("School", style: TextStyle(fontSize: 16),)),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 25,),
                  Text("Password", style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: 300,
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )

                      ),

                    ),
                  ),
                  SizedBox(height: 100,),
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: SizedBox(
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>StudenHomePage(),));
                          },
                          child: Text("Login", style: TextStyle(fontSize: 20),)),
                    ),
                  ),


                ],
              ),
            )


          ],

        ),
      ),
    );
  }

}