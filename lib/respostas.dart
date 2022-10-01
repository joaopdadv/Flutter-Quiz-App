import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onClick;

  const Resposta(this.texto, this.onClick, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: onClick,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          child: Text(
            texto,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ));
  }
}
