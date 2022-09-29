// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

main() {
  runApp(new QuizApp());
}

// ignore: use_key_in_widget_constructors
class QuizApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Olá Mundo"),
    );
  }
}
