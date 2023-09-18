import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/topic.dart';

class ExercisePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset("assets/images/exercisepage.png", fit: BoxFit.cover,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    ),
                      onPressed: (){},
                      child: Text("SD")),
                ),

                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.cyan.shade200,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)
                          )
                      ),
                      onPressed: (){},
                      child: Text("SMP")),
                ),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pinkAccent.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)
                          )
                      ),
                      onPressed: (){},
                      child: Text("SMA")),
                ),
              ],
            ),

            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade300,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.only( right: 8, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
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
                                    fillColor: Colors.white,
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
                                    fillColor: Colors.white,
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
                                    fillColor: Colors.white,
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
                                    fillColor: Colors.white,
                                    hintText: "5",
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
                      SizedBox(height: 10,),
                      Text("1st Semester", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(25)
                         ),
                         child: ClipRRect(
                           borderRadius: BorderRadius.all(Radius.circular(25)),
                           child: GridView(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(5),
                                 child: Container(
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                     borderRadius: BorderRadius.circular(25)
                                   ),

                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       children: [
                                         Image.asset("assets/images/calculator.png"),
                                         SizedBox(width: 10,),
                                         InkWell(
                                           onTap: (){
                                             Navigator.push(context, MaterialPageRoute(builder: (context)=>TopicPage(),));
                                           },
                                             child: Text("Operasi hitung\npecahan"))
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5),
                                 child: Container(
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(25)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       children: [
                                         Image.asset("assets/images/calculator.png"),
                                         SizedBox(width: 10,),
                                         Text("Perbandingan\ndan skala")
                                       ],
                                     ),
                                   ),

                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5),
                                 child: Container(
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(25)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       children: [
                                         Image.asset("assets/images/calculator.png"),
                                         SizedBox(width: 10,),
                                         Text("Kecepatan"),
                                       ],
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5),
                                 child: Container(
                                   decoration: BoxDecoration(
                                       color: Colors.white,
                                       borderRadius: BorderRadius.circular(25)
                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       children: [
                                         Image.asset("assets/images/calculator.png"),
                                         SizedBox(width: 10,),
                                         Text("Debit")
                                       ],
                                     ),
                                   ),
                                 ),
                               ),

                             ],
                               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 2,childAspectRatio: 2.60,),

                           ),
                         ),

                       ),
                     ),
                      Text("2nd Semester",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                      SizedBox(height: 5,),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            child: GridView(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(25)
                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/images/calculator.png"),
                                          SizedBox(width: 10,),
                                          Text("Sifat bangun\nruang")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/images/calculator.png"),
                                          SizedBox(width: 10,),
                                          Text("Volume kubus\ndan balok")
                                        ],
                                      ),
                                    ),

                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/images/calculator.png"),
                                          SizedBox(width: 10,),
                                          Text("Volume prisma\ndan limas")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(25)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/images/calculator.png"),
                                          SizedBox(width: 10,),
                                          Text("Menyajikan data")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,childAspectRatio: 2.60,),

                            ),
                          ),

                        ),
                      )

                    ],
                  ),
                ),

              ),
            )

            
          ],
        ),
      ),

    );
  }

}

// class semesterGridview extends StatelessWidget {
//   const semesterGridview({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(25)
//       ),
//       child: Column(
//         children: [
//           Image.asset("assets/images/calculator.png")
//         ],
//       ),
//     );
//   }
// }