import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbe6acd),
        title: const Center(
          child: Text(
            'Pantalla 3 Altamirano',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
