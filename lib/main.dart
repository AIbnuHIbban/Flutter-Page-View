import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: 'Page View',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> gambar=[
    "img1.png",
    "img2.png",
    "img3.png",
    "img4.png",
    "img6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page View"),),
      
      body: Container(
        child: PageView.builder(
          itemCount: gambar.length,
          itemBuilder: (BuildContext context, int i){
            return new Image.asset("img/"+gambar[i],fit: BoxFit.fitWidth,);
          },
        ),
      ),
    );
  }
}