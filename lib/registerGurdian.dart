import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/login.dart';

class RegisterGurdian extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 15, top: 15),
                child: Text("Register", style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),)),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NIG", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
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
                  Text("Name", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
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
                  Text("School", style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),),
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


                  SizedBox(height: 15,),
                  Column(
                    children: [
                      Text("Class", style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16),),
                    ],
                  ),
                  SizedBox(height: 5,),

                  Padding(
                    padding: EdgeInsets.only(right: 55),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: "1",
                                hintStyle: TextStyle(fontSize: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )

                            ),

                          ),
                        ),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: "2",
                                hintStyle: TextStyle(fontSize: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )

                            ),

                          ),
                        ),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: "3",
                                hintStyle: TextStyle(fontSize: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )

                            ),

                          ),
                        ),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: "4",
                                hintStyle: TextStyle(fontSize: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )

                            ),

                          ),
                        ),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: "5",
                                hintStyle: TextStyle(fontSize: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )

                            ),

                          ),
                        ),
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade300,
                                hintText: "6",
                                hintStyle: TextStyle(fontSize: 20),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )

                            ),

                          ),
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
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
                  SizedBox(height: 70,),
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: SizedBox(
                      height: 45,
                      width: 170,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.cyan.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )
                          ) ,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),));
                          },
                          child: Text("Register", style: TextStyle(fontSize: 20),)),
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