import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class Contenedores extends StatelessWidget {
  double ancho = 0;
  double largo = 0;
  String imagen = "insert image";
  String nombre = "inserte nombre";
  String screen;

  Contenedores(this.ancho, this.largo, this.imagen, this.nombre, this.screen,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              width: ancho,
              height: largo,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(imagen), fit: BoxFit.fill),
              ),
              child: Center(
                  child: RaisedButton(
                child: Text(nombre, style: const TextStyle(fontSize: 10.0)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CardScreen(),
                  ));
                },
              )))
        ]);
  }
}
