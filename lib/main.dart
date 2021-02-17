import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:tricko_app/Pieces/Verticallw.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = Container(
    height: 390.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/gk.jpeg'),
        AssetImage('images/mk.jpeg'),
        AssetImage('images/sk.jpeg'),
        AssetImage('images/hk.jpeg'),

      ],
      autoplay: false,

   // animationCurve: Curves.fastOutSlowIn,
   // animationDuration: Duration(milliseconds: 500),
      dotSize: 5.0,
      dotColor: Colors.white,
      indicatorBgPadding: 7.0,
  ),
  ) ;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Text ('TRİCKO'),
      ),
      body: ListView(
        children: [
          image_carousel,
          SizedBox(
            height: 20.0,
          ),
             VerticalList(),

        ],
      ),

    );
  }
}


