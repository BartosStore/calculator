import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  final Map<String, String> keys = {
    "":"",
    "clear": "C",
    "plusminus": "+-",
    "percentage": "%",
    "divide": "/",
    "multiplication":"x",
    "plus":"+",
    "minus":"-",
    "equals":"=",
    "decimal_point":".",
    "zero":"0",
    "1":"1",
    "2":"2",
    "3":"3",
    "4":"4",
    "5":"5",
    "6":"6",
    "7":"7",
    "8":"8",
    "9":"9",
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CalculatorKey(
              symbol: keys["clear"],
            ),
            CalculatorKey(
              symbol: keys["plusminus"],
            ),
            CalculatorKey(
              symbol: keys["percentage"],
            ),
            CalculatorKey(
              symbol: keys["divide"],
            )
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorKey(
              symbol: keys["7"],
            ),
            CalculatorKey(
              symbol: keys["8"],
            ),
            CalculatorKey(
              symbol: keys["9"],
            ),
            CalculatorKey(
              symbol: keys["multiplication"],
            )
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorKey(
              symbol: keys["4"],
            ),
            CalculatorKey(
              symbol: keys["5"],
            ),
            CalculatorKey(
              symbol: keys["6"],
            ),
            CalculatorKey(
              symbol: keys["minus"],
            )
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorKey(
              symbol: keys["1"],
            ),
            CalculatorKey(
              symbol: keys["2"],
            ),
            CalculatorKey(
              symbol: keys["3"],
            ),
            CalculatorKey(
              symbol: keys["plus"],
            )
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorKey(
              symbol: keys["zero"],
            ),
            CalculatorKey(
              symbol: keys["decimal_point"],
            ),
            CalculatorKey(
              symbol: keys[""],
            ),
            CalculatorKey(
              symbol: keys["equals"],
            )
          ],
        )
      ],
    );
  }
}

class CalculatorKey extends StatelessWidget {
  final String symbol;

  CalculatorKey({Key key, this.symbol}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    double buttonSize = (screen.width / 4);
    TextStyle textStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: buttonSize);

    return Container(
      constraints: BoxConstraints.expand(height: buttonSize, width: buttonSize),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueGrey)),
      child: Text(
        symbol,
        style: textStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
