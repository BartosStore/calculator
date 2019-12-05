import 'package:flutter/material.dart';
import 'package:calculator/key-symbol.dart';
import 'package:calculator/key-controller.dart';

abstract class Keys {
  static KeySymbol clear = const KeySymbol('C');
  static KeySymbol sign = const KeySymbol('±');
  static KeySymbol percent = const KeySymbol('%');
  static KeySymbol divide = const KeySymbol('÷');
  static KeySymbol multiply = const KeySymbol('x');
  static KeySymbol subtract = const KeySymbol('-');
  static KeySymbol add = const KeySymbol('+');
  static KeySymbol equals = const KeySymbol('=');
  static KeySymbol decimal = const KeySymbol('.');

  static KeySymbol zero = const KeySymbol('0');
  static KeySymbol one = const KeySymbol('1');
  static KeySymbol two = const KeySymbol('2');
  static KeySymbol three = const KeySymbol('3');
  static KeySymbol four = const KeySymbol('4');
  static KeySymbol five = const KeySymbol('5');
  static KeySymbol six = const KeySymbol('6');
  static KeySymbol seven = const KeySymbol('7');
  static KeySymbol eight = const KeySymbol('8');
  static KeySymbol nine = const KeySymbol('9');
}

class CalculatorKey extends StatelessWidget {
  final KeySymbol symbol;

  static dynamic _fire(CalculatorKey key) => KeyController.fire(KeyEvent(key));

  CalculatorKey({this.symbol});

  Color get color {
    switch (symbol.type) {
      case KeyType.OPERATOR:
        return Color(0x01000000);
      case KeyType.FUNCTION:
        return Color(0x01000000);
      case KeyType.INTEGER:
      default:
        return Color(0x1F000000);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    double buttonSize = (screen.width / 4);
    TextStyle textStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: buttonSize);

    return Container(
      height: buttonSize,
      width: (symbol == Keys.equals) ? buttonSize * 2 : buttonSize,
      decoration: BoxDecoration(border: Border.all(color: Colors.black38)),
      child: RaisedButton(
        onPressed: () => _fire(this),
        color: color,
        child: Text(
          symbol.value,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
