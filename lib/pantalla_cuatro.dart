import 'package:flutter/material.dart';

class PantallaCuatro extends StatefulWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  State<PantallaCuatro> createState() => _PantallaCuatroState();
}

class _PantallaCuatroState extends State<PantallaCuatro> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantalla 4',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xff8fbcff),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(
                color: Color(0xffa10000),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AnimatedCrossFade(
            firstChild: Image.network(
              'https://i.pinimg.com/736x/fc/c9/f8/fcc9f8cc00c06e942c8d269c3cd2590b.jpg',
              width: double.infinity,
            ),
            secondChild: Image.network(
              'https://i.pinimg.com/736x/f2/b1/2f/f2b12f73acf50f29d14e47c631c7f2ad.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Pantalla inicial'),
            ),
          ),
        ],
      ),
    );
  }
}
