import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

enum ProductTypeEnum { Downloadable, Deliverable }

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ProductTypeEnum? _productTypeEnum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio button"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                  dense: true,
                    tileColor: Colors.deepPurple.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    contentPadding: EdgeInsets.all(0),
                    value: ProductTypeEnum.Deliverable,
                    groupValue: _productTypeEnum,
                    title: Text(ProductTypeEnum.Deliverable.name),
                    onChanged: (value){
                      setState(() {
                        _productTypeEnum = value;
                      });
                    }
                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                child: RadioListTile(
                  dense: true,
                    tileColor: Colors.deepPurple.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    contentPadding: EdgeInsets.all(0),
                    value: ProductTypeEnum.Downloadable,
                    groupValue: _productTypeEnum,
                    title: Text(ProductTypeEnum.Downloadable.name),
                    onChanged: (value){
                      setState(() {
                        _productTypeEnum = value;
                      });
                    }),
              ),
            ],
          )

        ],
      ),
    );
  }
}
