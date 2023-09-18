import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/login.dart';

class RegisterSchoolPage extends StatelessWidget{
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
                  Text("NPSN", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
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
                  Text(" School Name", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
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
                            Text("City", style: TextStyle(
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
                  Text("Address", style: TextStyle(
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
                  SizedBox(height: 70,),
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    child: SizedBox(
                      height: 45,
                      width: 170,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.pink.shade200,
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