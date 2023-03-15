import 'package:flutter/material.dart';
import 'package:calculadora_manutencao/components/Keyboard.dart';
import 'package:calculadora_manutencao/components/Screen.dart';
import 'package:calculadora_manutencao/utils/calcExpression.dart';

class Body extends StatefulWidget {
  const Body(BuildContext context, {super.key});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String calculation = '';
  double result = 0;

  addCharacter(String text) {
    setState(()  {
      calculation = calculation + text;
    });
  }

  calcResult() {
    setState(() {
      result = calcExpression(calculation);
    });
  }

  clearScreen() {
    setState(() {
      calculation = '';
      result = 0;
    });
  }

  clearCalculation() {
    setState(() {
      calculation = '';
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Screen(context, calculation, result.toString()),
          const SizedBox( height: 12, ),
          Keyboard(context, (string) { addCharacter(string);}, calcResult, clearScreen )
        ],
      ),
    );
  }
}