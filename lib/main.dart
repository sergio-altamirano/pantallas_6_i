import 'package:flutter/material.dart';
import 'package:altamiranorutas/pagina_inicial.dart';
import 'package:altamiranorutas/pagina_dos.dart';
import 'package:altamiranorutas/pagina_tres.dart';

void main() => runApp(MisRutas());

class MisRutas extends StatelessWidget {
  const MisRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      initialRoute:
          '/', // Cambié la ruta inicial a pantalla1 para mostrar el AppBar personalizado
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
      },
    );
  }
}
