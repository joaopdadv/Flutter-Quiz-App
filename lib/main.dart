// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

main() {
  runApp(QuizApp());
}

// ignore: use_key_in_widget_constructors
class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Título"),
        ),
        body: Text("Body"),
      ),
    );
  }
}
