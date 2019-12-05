import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;
  final double height;
  final LinearGradient _gradient =
      const LinearGradient(colors: [Colors.black26, Colors.black45]);

  Display({Key key, this.value, this.height}) : super(key: key);

  String get _output => value.toString();
  double get _martgin => (height / 10) * 1.5;

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    double buttonSize = (screen.width / 4);
    TextStyle textStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.w300, fontSize: buttonSize);

    return Container(
      padding: EdgeInsets.only(top: _martgin * 2, bottom: _martgin),
      constraints: BoxConstraints.expand(height: height),
      color: Colors.black12,
      child: Container(
        padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
        constraints: BoxConstraints.expand(height: height * 2),
        decoration: BoxDecoration(gradient: _gradient),
        child: Text(
          _output,
          style: textStyle,
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
