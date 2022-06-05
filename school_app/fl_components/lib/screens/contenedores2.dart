import 'package:flutter/widgets.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';
import "package:fl_components/router/app_routes.dart";

class contenedores2 extends StatelessWidget {
  double ancho = 0;
  double largo = 0;
  String imagen = "insert image";
  String nombre = "inserte nombre";
  String screen;

  contenedores2(this.ancho, this.largo, this.imagen, this.nombre, this.screen);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        verticalDirection: VerticalDirection.down,
        children: [
          Container(
              width: this.ancho,
              height: this.largo,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(this.imagen), fit: BoxFit.fill),
              ),
              child: Center(
                  child: RaisedButton(
                child: Text(this.nombre, style: TextStyle(fontSize: 10.0)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Listview1Screen(),
                  ));
                },
              )))
        ]);
  }
}
