//*estas son las paqueterias u estenciones para que funcione el main principal
//ESTE ES UN COMENTARIO DE PRUEBA
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp()); //*funcion principal "arranque de la app"

//*esta es la clase principal
class MyApp extends StatelessWidget {
  //*es el key para tomar el control de la clase y añade la constante
  const MyApp({Key? key}) : super(key: key);

  @override
  //* widget para la construcion de un widget con retorno
  Widget build(BuildContext context) {
    return MaterialApp(
      //* esta es una ref del file theme para dar color a los pantallas
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomeScreen(),
    );
  }
}
