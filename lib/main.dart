// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

main() {
  runApp(QuizApp());
}

// ignore: use_key_in_widget_constructors
class QuizApp extends StatelessWidget {
  final List<String> perguntas = [
    "Qual sua idade?",
    "Qual seu curso na faculdade?",
    "Você trabalha?",
    "Qual time você torce?"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Título"),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            Text(perguntas[1]),
            Text(perguntas[2]),
            ElevatedButton(
              onPressed: null,
              child: Text("Texto do botão"),
            )
          ],
        ),
      ),
    );
  }
}
