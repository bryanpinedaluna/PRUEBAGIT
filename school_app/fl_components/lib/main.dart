//*estas son las paqueterias u estenciones para que funcione el main principal
//ESTE ES UN COMENTARIO DE PRUEBA
import 'package:flutter/material.dart';

import 'package:fl_components/theme/app_theme.dart';
import 'package:fl_components/router/app_routes.dart';

void main() => runApp(const MyApp()); //*funcion principal "arranque de la app"

//*esta es la clase principal
class MyApp extends StatelessWidget {
  //*es el key para tomar el control de la clase y añade la constante
  const MyApp({Key? key}) : super(key: key);

  @override
  //* widget para la construcion de un widget con retorno
  Widget build(BuildContext context) {
    return MaterialApp(
        //debugShowCheckedModeBanner: false,
        title: 'Material App',
        //*esta es es una referencia de las rutas del homeprincipal
        initialRoute: AppRoutes.initialRoute,
        //*rutas para accder al mapa de mi lista
        routes: AppRoutes.getAppRoutes(),
        //* generacion de mis rutas de forma dinamica
        onGenerateRoute: AppRoutes.onGenerateRoute,
        //* esta es una ref del file theme para dar color a los pantallas
        theme: AppTheme.ligthTheme);
  }
}
