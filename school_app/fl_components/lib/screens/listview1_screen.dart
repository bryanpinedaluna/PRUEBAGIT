//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

//*clase listview1_screen de la forma instantanea
class Listview1Screen extends StatelessWidget {
  //* lista de elmentos que no cambia
  final options = const ['DGAE', 'TRAMIMITES', 'ASESORIAS', 'CONFIG'];
  final linkurl = const [
    'https://subes.becasbenitojuarez.gob.mx/',
    'https://www.riu.unam.mx/',
    'http://escolar.ingenieria.unam.mx/',
    'https://www.dgae.unam.mx/'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
        ),
        //* lista que soporta widget
        body: ListView(
          //*sirve para la creacion del cuerpo del widget
          children: [
            ...options
                //* map sirve para leer una lista de tipo widget
                //* listTile widget prefabricados para listas
                .map((list) => ListTile(
                      title: Text(list),
                      //* sirve para rederizar iconos
                      trailing: const Icon(Icons.insert_link_outlined),
                      onTap: () {
                        // final String a = linkurl[0];
                        // final String b = linkurl[1];
                        // //final String c = linkurl[2];
                        // //final String d = linkurl[3];
                        // if (options[0] == linkurl) {
                        //   launch(a);
                        // } else {
                        //   launch(b);
                        // }
                        //if (options == [0]) {
                        //}
                        //if (options == [1]) {
                        //}
                      },
                      //leading: Icon(Icons.accessible),
                    ))
                .toList()
          ],
        ));
  }
}
