// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/questao.dart';
import 'package:quiz_app/respostas.dart';

main() {
  runApp(QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  int _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      if (_perguntaSelecionada < 3) {
        _perguntaSelecionada++;
      }
    });

    print(_perguntaSelecionada);
  }

  void _zerar() {
    setState(() {
      _perguntaSelecionada = 0;
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
            Questao(perguntas[_perguntaSelecionada]),
            Resposta("Texto btn 1", _responder),
            Resposta("Texto btn 2", _responder),
            Resposta("Texto btn 3", _responder),
            Resposta("Voltar para a primeira", _zerar),
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
