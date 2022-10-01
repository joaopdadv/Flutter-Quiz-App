// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';

main() {
  runApp(QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  int _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      "Qual sua idade?",
      "Qual seu curso na faculdade?",
      "Você trabalha?",
      "Qual time você torce?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Título"),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              onPressed: _responder,
              child: Text("Texto do botão 1"),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text("Texto do botão 2"),
            ),
            ElevatedButton(
              onPressed: _responder,
              child: Text("Texto do botão 3"),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() {
    return new _QuizAppState();
  }
}
