// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app/questao.dart';
import 'package:quiz_app/respostas.dart';

main() {
  runApp(QuizApp());
}

class _QuizAppState extends State<QuizApp> {
  int _perguntaSelecionada = 0;

  final List<Map<String, Object>> perguntas = [
    {
      'texto': "Qual sua cor favorita?",
      "respostas": ["Azul", "Vermelho", "Verde", "Rosa"]
    },
    {
      "texto": "Qual seu time de futebol?",
      "respostas": ["Grêmio", "Internacional", "Juventude", "Caxias"]
    },
    {
      "texto": "Qual seu animal favorito?",
      "respostas": ["Leão", "Cachorro", "Gato", "Coelho"]
    },
  ];

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  bool get temPergSelecionada {
    return _perguntaSelecionada < perguntas.length;
  }

  void _zerar() {
    setState(() {
      _perguntaSelecionada = 0;
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPergSelecionada
        ? perguntas[_perguntaSelecionada].cast()['respostas']
        : [];
    List<Widget> widgets =
        respostas.map((text) => Resposta(text, _responder)).toList();

    // for (var textList in respostas) {
    //   widgets.add(Resposta(textList, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Título"),
        ),
        body: temPergSelecionada
            ? Column(
                children: <Widget>[
                  Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
                  ...widgets,
                  Resposta("Voltar para a primeira", _zerar),
                ],
              )
            : null,
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
