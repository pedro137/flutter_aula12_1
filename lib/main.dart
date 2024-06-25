import 'package:flutter/material.dart';
import 'package:flutter_pagina/mes.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final List<String> meses = ['Jan', 'Fev', 'Mar', 'Abr', 'Mai'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Meses'),
        ),
        body: ListView.builder(
          itemCount: meses.length,
          itemBuilder: (context, index) {
            return ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mes(meses[index]),
                  ),
                );
              },
              child: Text(meses[index]),
            );
          },
        ),
      ),
    );
  }
}
