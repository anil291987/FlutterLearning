import 'package:flutter/material.dart';
import 'package:flutter_assignment/TextOutput.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}
class _TextControlState extends State<TextControl> {
  String _mainText = 'This is the first assignment!';

  @override
  Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          RaisedButton(onPressed: () {
            setState(() {
              if (_mainText == 'This is the first assignment!') {
                  _mainText = 'Text changed!';
              } else {
                _mainText = 'This is the first assignment!';
              }
            });
          },
          child: Text('Change Text'),
          ),
          TextOutput(_mainText),
        ],
      );
  }
}