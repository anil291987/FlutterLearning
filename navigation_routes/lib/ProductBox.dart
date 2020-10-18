import 'package:flutter/material.dart';
import 'Product.dart';
import 'package:scoped_model/scoped_model.dart';
import 'RatingBox.dart';

class ProductBox extends StatelessWidget {
  ProductBox({Key key, this.item}) : super(key: key);
  final Product item;
@override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 170,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                "assets/appimages/" + this.item.image,
                width: 180,
                ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: ScopedModel<Product>(model: this.item, 
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(this.item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(this.item.description),
                      Text("Price: " + this.item.price.toString()),
                      ScopedModelDescendant<Product>(builder: (context, child, model){
                        return RatingBox(item: item);
                      }),
                    ],
                  ),
                  )
                ),
                ),
            ],
          ),
        ),
    );
  }
}

