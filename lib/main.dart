import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:tricko_app/Pieces/categories.dart';

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
    height: 240.0,
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
        actions:[
          IconButton(icon: Icon(Icons.search_rounded, color: Colors.white,), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_bag_outlined, color: Colors.white,), onPressed: () {}),

        ]
      ),
      drawer: Drawer(
        child:ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Tricko Mağazaları'), accountEmail:Text('tricko@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.black,

            )
          ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
      ),
           InkWell(
             onTap: () {},
             child: ListTile(
               title: Text('Şubeler'),
               leading: Icon(Icons.apartment_outlined),

             ),
           ),
            Divider(
              color: Colors.black,
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Siparişlerim'),
                leading: Icon(Icons.shopping_bag_outlined),

              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Bize Ulaşın'),
                leading: Icon(Icons.phone_outlined),

              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              indent: 30,
              endIndent: 30,
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Yardım'),
                leading: Icon(Icons.help_outline_sharp),

              ),
            ),






      ],
        ),


      ),
      body: ListView(

        children: [
          image_carousel,
          SizedBox(
            height: 20.0,
          ),
             Row(
               children:<Widget> [
                 SizedBox(
                   width: 10,
                 ),
                 Text("Kategoriler", style: TextStyle(
                   fontSize: 20,

                 ),),
               ],
             ),
          Container(
            height:250.0,
            child: categories(),
            ),
        ],
      ),

  );
  }
  }


