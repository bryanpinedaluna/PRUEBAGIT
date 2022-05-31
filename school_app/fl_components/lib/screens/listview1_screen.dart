//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import "package:fl_components/screens/contenedores.dart";

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
        title: const Text('LISTA 1'),
      ),
      //* lista que soporta widget
      body: mostrador(),
    );
  }
}

Widget mostrador() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: contenedores(
              800,
              100,
              "https://th.bing.com/th/id/OIP.5lSlUhZVHFEjnrXhhyesmgAAAA?pid=ImgDet&rs=1",
              "SIAE",
              "https://www.dgae-siae.unam.mx/"),
        ),
        Expanded(
          child: contenedores(
              800,
              100,
              "https://th.bing.com/th/id/R.1e572629d4bcb61500c6966aa45d065b?rik=k%2fNnQSl1fkiWWQ&riu=http%3a%2f%2fwww.gob.mx%2fcms%2fuploads%2faction_program%2fmain_image%2f8243%2fTr_mites_y_Servicios-01.jpg&ehk=Wc3v5pwTAeYQLl68zl9ukatXXz%2bE0JoexrBXEU84IXk%3d&risl=&pid=ImgRaw&r=0",
              "TRAMITES Y SERVICIOS",
              "http://escolar.ingenieria.unam.mx/"),
        ),
        Expanded(
          child: contenedores(
              800,
              100,
              "https://th.bing.com/th/id/OIP.QqTBAH6aCk4LdYS7NZDoaAHaDn?pid=ImgDet&w=704&h=344&rs=1",
              "ASESORIAS",
              "https://dcb.ingenieria.unam.mx/index.php/asesorias/ "),
        ),
        Expanded(
          child: contenedores(
              800,
              100,
              "https://th.bing.com/th/id/R.324d200be3ba335cf8c07ccb6633e4a1?rik=PhxeCRLCWmnU%2fA&pid=ImgRaw&r=0",
              "DGAE",
              "https://www.dgae.unam.mx/"),
        ),
      ]
      //decoration: BoxDecoration(
      //image: DecorationImage(
      //image: NetworkImage(
      //"https://th.bing.com/th/id/R.324d200be3ba335cf8c07ccb6633e4a1?rik=PhxeCRLCWmnU%2fA&pid=ImgRaw&r=0"),
      //fit: BoxFit.cover)),
      );
}
