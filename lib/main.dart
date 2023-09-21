import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      theme:ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.lightGreen)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.lightGreen,
            minimumSize: Size(160, 40),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
          )
          )
        )
      ),
    );
  }
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        elevation: 0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello World!"),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){showDialog(
              barrierDismissible: false,
                context: context, builder: (context)=> AlertDialog(
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("Close")),
              ],
              title: Text("Alert!"),
              content: Text("This is Alert Dialog Box"),
            ),
            );},
                child: Text("Alert Dialog")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              showDialog(
                barrierDismissible: false,
                  context: context, builder: (context)=> SimpleDialog(
                title: Text("Simple Dialog"),
                children: [
                  Text("Hello this is simple dialog box", style: TextStyle(fontSize: 14, color: Colors.black),),
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("Close"))
                ],
              ));},
                child: Text("Simple Dialog")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: 
                  BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25))
              ),
                context: context,
                builder: (BuildContext contex){
              return SizedBox(
                height: 300,
                child: Column(
                  children: [
                    Text("This is Bottom Modal Sheet", style: TextStyle(color: Colors.black, fontSize: 14),),
                    ListTile(
                      title: Text("Hello"),
                    ),
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: Text("Close"))
                  ],
                ),
              );

                }
            );
              },
                child: Text("Show Bottom Sheet")),
            SizedBox(height: 10,),

          ],
        ),
      ),

    );
  }
}
