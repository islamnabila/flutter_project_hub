import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/login.dart';

class RegisterPage extends StatelessWidget{
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
                  Text("ID", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                  SizedBox(height: 5,),
                  SizedBox(
                    width: 300,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,

                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.blue, width: 1)),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),  ),
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.white, width: 1)),
                        disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey, width: 1)),




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
                  Text("Gender", style: TextStyle(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Level", style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),),
                          SizedBox(height: 5,),
                          SizedBox(
                            width: 140,
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
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 55),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Grade", style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),),
                            SizedBox(height: 5,),
                            SizedBox(
                              width: 140,
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
                          ],
                        ),
                      ),

                    ],
                  ),
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
                                hintText: "A",
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
                                hintText: "B",
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
                                hintText: "C",
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
                                hintText: "D",
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
                                hintText: "E",
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
                                hintText: "F",
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
                  SizedBox(height: 15,),
                  Text("Password", style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),),
              SizedBox(height: 5,),
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
                  SizedBox(height: 20,),
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