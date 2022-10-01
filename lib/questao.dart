import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto; // FINAL pois é Stateless

  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(texto);
  }
}
