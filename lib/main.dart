import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  List images = [
    "assets/images/flower.jpg",
    "assets/images/it.jpg",
    "assets/images/nature.jpg",
    "assets/images/flower1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Text(
              "Discover",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 18),
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                tabs: [
                  Tab(text: 'Places',),
                  Tab(text: 'Inspiration'),
                  Tab(text: 'Emotions'),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            width: double.maxFinite,
            height: 250,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount : images.length,
                    itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(right: 20, top: 20),
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                        child: Image.asset(images[index],fit: BoxFit.cover,)),
                  );
                }),
                Text("There"),
                Text("Here")],
            ),
          )
        ],
      ),
    );
  }
}
