import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  const Resposta(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200.0,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: null,
          child: Text(texto),
        ));
  }
}
