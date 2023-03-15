import 'package:calculadora_manutencao/components/UserAccount.dart';
import 'package:calculadora_manutencao/screens/Calculator.dart';
import 'package:calculadora_manutencao/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:calculadora_manutencao/screens/About.dart';

Widget Menu(BuildContext context){
  return Drawer(
      child: ListView(
          children: <Widget>[
            const UserAccount(),
            ListTile(
              title: Text("Home"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),);
              },
            ),
            ListTile(
              title: Text("About"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => About()),);
              },
            ),
            ListTile(
              title: Text("Calculadora"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calculator(context)),);
              },
            ),
          ]
      )
  );
}