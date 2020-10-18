import 'package:flutter/material.dart';

void main() => runApp(
MaterialApp(
   title: "Hello World App",
   home: myApp(),
)
);

class myApp extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}
 class _State extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World App"),
      ),
      body: Center(
        child: Text("Hello, world!"),
      ),
    );
  }

 }
