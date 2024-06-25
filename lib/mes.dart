import 'package:flutter/material.dart';

class Mes extends StatelessWidget {
  final String nome;

  Mes(this.nome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nome),
      ),
      body: Center(
        child: Text('O que aconteceu em $nome...'),
      ),
    );
  }
}
