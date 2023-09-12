import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_hub/product_model.dart';
import 'package:flutter_project_hub/welcome.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: SplashScreen(),
    );
  }

}
class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Home"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.purple,),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Colors.pink,),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blue,),
            label: 'Person',
          ),

        ],

        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.dashboard_rounded, color: Colors.blue,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search))
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi Nabila!", style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Today is a good day\nto learn somthing new!",

                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54),)

                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Image.asset("assets/images/profile.png"),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("Top", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),),
                  ),
                  Text("Design", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("Marketing", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Image.asset("assets/images/sort.png", height: 20,width: 20, )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  InkWell(
                      onTap: (){

                      },
                      child: Text("See all", style: TextStyle(fontSize: 17, color: Colors.blue),))
                ],
              ),
              SizedBox(height: 20,),
              GridView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,childAspectRatio: 0.90
                  ), itemBuilder: (context, index)=> CategoryCard(
                product: products[index],

              )),

            ],
          ),
        ),
      ),
    );

  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product
  }): super(key : key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 70,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            Image.asset(product.image, height: 110, ),
            Text(product.title,
              style: TextStyle(
                  color: Colors.white, fontSize: 18,
                  fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text("${product.courses}courses",
              style: TextStyle(
                color: Colors.white, fontSize: 15,),),
          ],
        ),
      ),
    );
  }
}

