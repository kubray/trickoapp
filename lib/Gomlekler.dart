import 'package:flutter/material.dart';



class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title:Text ('TRİCKO'),
          actions:[
            IconButton(icon: Icon(Icons.search_rounded, color: Colors.white,), onPressed: () {}),
            IconButton(icon: Icon(Icons.shopping_bag_outlined, color: Colors.white,), onPressed: () {}),

          ]
      ),
      body: SafeArea(
        child: Container(

        ),
      ),
    );
  }
}



