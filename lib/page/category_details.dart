import 'package:flutter/material.dart';
class CategoryDetails extends StatefulWidget {
  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.black,
          title:Text ('TRİCKO'),
          actions:[
            IconButton(icon: Icon(Icons.search_rounded, color: Colors.white,), onPressed: () {}),
            IconButton(icon: Icon(Icons.shopping_bag_outlined, color: Colors.white,), onPressed: () {}),

          ]
      ),
      body: new ListView(
        children: [
          new Container(
            height: 300.0,
            color: Colors.grey,
          )
        ],
      )

    );
  }
}
