import 'package:flutter/material.dart';
import '../Components/Display.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  final double displayValue = 123.45;

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Column(
                children: <Widget>[
                     Text('Keyboard'),
                ],
            ),
        );
    }
}