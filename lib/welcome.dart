import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                  ),
                  child: Image.asset("assets/images/welcome.png"),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text("Learning Everything",
                            style: TextStyle(color: Colors.black,
                                fontSize:25, fontWeight: FontWeight.bold),),

                          SizedBox(height: 10,) ,

                          Text("Learn with pleaure with \n us, Where you are",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black54, fontSize: 15,
                                fontWeight: FontWeight.w500,
                                height: 1.5),),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                height: 50,
                                color: Colors.pink,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
                                },
                                child: Text("Get Started",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 19, fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(height: 70,)
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

        )
    );
  }
}