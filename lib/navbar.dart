import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarPage extends StatelessWidget {
  const NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage("assets/images/background.jpg",),fit: BoxFit.cover
              )
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage("assets/images/nabila.jpg"),fit: BoxFit.cover
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
              ),
              SizedBox(height: 17,),
              Text("Nabila Islam Moriam", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text("islamnabila098765@gmail.com", style: TextStyle(color: Colors.white, fontSize: 12),)
            ],
          )),
          ListTile(
            leading: Icon(Icons.home, color: Colors.lightGreen,),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.favorite_outlined, color: Colors.lightGreen),
            title: Text("Favourite"),
          ),
          ListTile(
            leading: Icon(Icons.settings,color: Colors.lightGreen),
            title: Text("Setting"),
          ),
          ListTile(
            leading: Icon(Icons.watch_later, color: Colors.lightGreen),
            title: Text("Update"),
          ),
          ListTile(
            leading: Icon(Icons.question_mark, color: Colors.lightGreen),
            title: Text("About"),
          ),
        ],
      ),

    );
  }
}
