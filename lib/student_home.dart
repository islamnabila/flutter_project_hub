import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/exercise.dart';

class StudenHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Image.asset("assets/images/shome.png", fit: BoxFit.cover,)
                  ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Image.asset("assets/images/dollar.png"),
                                    ),
                                    Text("10")
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Image.asset("assets/images/diamond.png"),
                                    ),
                                    Text("5")
                                  ],
                                ),
                              ],
                            ),
                           Padding(
                             padding: const EdgeInsets.only(left: 90),
                             child: Column(
                               children: [
                                 Text("Hi! Nabila Islam Moriam", style: TextStyle(fontSize: 17),),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 70),
                                   child: Text("5th Grade Student",),
                                 )
                               ],
                             ),
                           ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Image.asset("assets/images/profile.png", height: 30, width: 30, fit: BoxFit.cover,),
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        Text("Ready to learn?", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),),
                        Text("Continue where you left off", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                        SizedBox(height: 15,),
                        Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                      child: Stack(
                                          children:[
                                          Image.asset("assets/images/exercise.png",),
                                            Positioned(
                                              bottom: 15,
                                                right:30,
                                                child: Align(
                                                  alignment: Alignment.bottomRight,
                                                    child: InkWell(
                                                      onTap: (){
                                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ExercisePage(),));
                                                      },
                                                        child: Text("Exercise", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),))
                                                )
                                            )
                                          ] ,
                                      ),
                                  ),


                                  Expanded(
                                    flex: 1,
                                      child: Stack(
                                          children:[ Image.asset("assets/images/quiz.png"),
                                            Positioned(
                                              bottom: 15,
                                                right: 30,
                                                child: Align(
                                                  alignment: Alignment.bottomRight,
                                                    child: InkWell(
                                                      onTap: (){
                                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>))
                                                      },
                                                        child: Text("Quiz", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),))))
                                          ],
                                  ))
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Recommended", style: TextStyle(fontSize: 23 , fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            Container(
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.orange.shade300,
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: Row(
                                children: [
                                  Image.asset("assets/images/pi.png"),
                                  SizedBox(width: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Keliling dan luas lingkaran", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                                        Text("Operasi hitung pecahan beda jenis", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),

                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 40,),
                                  Container(
                                    height: 60,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    child: Center(child: Text("21%", style: TextStyle(fontSize: 17),)),

                                  )
                                ],
                              ),
                            )
                          ],
                        )

                        
                        


                      ],
                    ),
                  ),
                ),
              ),
            ),

            
          ],

        ),
      ),

    );
  }

}