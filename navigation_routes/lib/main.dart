import 'package:flutter/material.dart';
import 'Product.dart';
import 'ProductPage.dart';
import 'ProductBox.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: MyHomePage(title: 'Products'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final items = Product.getProduct();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView.builder(
        itemCount: this.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ProductBox(item: items[index]),
            onTap: () => {
              Navigator.push(
                context,
              MaterialPageRoute(
              builder: (context) => ProductPage(item: items[index]),
              ),
              ),
            },
          );
        },
      ),
    );
  }
}