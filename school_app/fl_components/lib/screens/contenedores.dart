import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class contenedores extends StatelessWidget {
  double ancho = 0;
  double largo = 0;
  String imagen = "insert image";
  String nombre = "inserte nombre";
  String url;

  contenedores(this.ancho, this.largo, this.imagen, this.nombre, this.url);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              width: this.ancho,
              height: this.largo,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(this.imagen), fit: BoxFit.fill),
              ),
              child: Center(
                  child: RaisedButton(
                child: Text(this.nombre, style: TextStyle(fontSize: 10.0)),
                onPressed: () {
                  launchUrlString(this.url);
                },
              )))
        ]);
  }
}
