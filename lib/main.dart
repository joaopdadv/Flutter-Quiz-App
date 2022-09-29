// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';

main() {
  runApp(QuizApp());
}

class QuizAppState extends State<QuizApp> {
  int perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print(perguntaSelecionada);
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
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              onPressed: responder,
              child: Text("Texto do botão 1"),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text("Texto do botão 2"),
            ),
            ElevatedButton(
              onPressed: responder,
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
  QuizAppState createState() {
    return new QuizAppState();
  }
}
