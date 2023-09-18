import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopicPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Operasi Hitung Pecahan", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Topics", style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade200,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Merubah Bentuk Pechan"),
                              Image.asset("assets/images/abacus.png")
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.pink.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Penjumlahan dan\npenguranga pecahan "),
                              Image.asset("assets/images/calculator2.png")
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.orange.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Perkalian dan pembagian\npecahan sejenis"),
                              Image.asset("assets/images/blackboard.png")
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Colors.cyan.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Operasi hitung pecahan\nbeda jenis"),
                              Image.asset("assets/images/calculation.png")
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text("Answer",style: TextStyle(fontSize: 15),),
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.cyan.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("20", style: TextStyle(fontSize: 25),)),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.pink.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("18", style: TextStyle(fontSize: 25),)),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.orange.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("20", style: TextStyle(fontSize: 25),)),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 70,
                          width: 65,
                          decoration: BoxDecoration(
                              color: Colors.cyan.shade200,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("19", style: TextStyle(fontSize: 25),)),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}