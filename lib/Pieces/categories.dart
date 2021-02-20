import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tricko_app/page/category_details.dart';

class categories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  var categories_list =[
    {
      "type":"Sweatshirt",
      "picture":"images/1.jpeg",
      "price":100,

    },
    {
      "type":"Body",
      "picture":"images/2.jpeg",
      "price":70,

    },
    {
      "type":"Sweatshirt",
      "picture":"images/1.jpeg",
      "price":80,

    },
    {
      "type":"Sweatshirt",
      "picture":"images/1.jpeg",
      "price":60,

    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount:categories_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder:(BuildContext context, int index){
          return Tek_cate(
          cate_type: categories_list[index]['type'],
           cate_picture: categories_list[index]['picture'],
    cate_price: categories_list[index]['price'],
          );
    }

    );

  }
}

class Tek_cate extends StatelessWidget {
  final cate_type;
  final cate_picture;
  final cate_price;
  Tek_cate({
    this.cate_type,
    this.cate_price,
    this.cate_picture,
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child:Hero(tag:cate_type,child:Material(child:InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new CategoryDetails())),
        child:GridTile(
          footer:Container(
            color: Colors.white70,
            child: ListTile(
              leading:Text(cate_type, style:TextStyle(fontWeight: FontWeight.bold)),
            title: Text("\$$cate_price")),
          ) ,
          child:Image.asset(cate_picture,
          fit: BoxFit.cover,),
        )
      )))
    );
  }
}
