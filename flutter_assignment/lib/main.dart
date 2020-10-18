import 'package:flutter/material.dart';
import './TextControl.dart';

void main() => runApp(MyAssignmentApp());

class MyAssignmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(home: Scaffold(
          appBar: AppBar(
          title: Text('My Assignement App'),
        ),
        body: TextControl(),
        ),
      );
  }
}
