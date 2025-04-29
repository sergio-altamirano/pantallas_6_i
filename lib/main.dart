import 'package:altamiranorutas/pagina_tres.dart';
import 'package:flutter/material.dart';
import 'package:altamiranorutas/pagina_inicial.dart';
import 'package:altamiranorutas/pagina_dos.dart';
import 'package:altamiranorutas/pantalla_cuatro.dart';
import 'package:altamiranorutas/pantalla_cinco.dart';
import 'package:altamiranorutas/pantalla_seis.dart';

void main() => runApp(MyRutas());

class MyRutas extends StatelessWidget {
  const MyRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
      },
    );
  }
}
