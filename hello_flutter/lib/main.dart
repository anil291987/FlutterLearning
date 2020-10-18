import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    title: "Hello World App",
    home: myApp(),
  ),
  );
class myApp extends StatelessWidget {
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