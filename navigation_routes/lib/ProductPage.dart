
import 'package:flutter/material.dart';
import 'Product.dart';
import 'RatingBox.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key key, this.item}) : super(key: key);
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.item.name),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset("assets/appimages/" + this.item.image),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(this.item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(this.item.description),
                      Text("Price: " + this.item.price.toString()),
                      RatingBox(item: item,),
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
  
}