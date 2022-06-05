//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import "package:fl_components/screens/contenedores.dart";
import "package:fl_components/widgets/widgets.dart";

//*clase listview1_screen de la forma instantanea
class Listview1Screen extends StatelessWidget {
  //* lista de elmentos que no cambia

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LISTA 1'),
      ),
      //* lista que soporta widget
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          // CustomCardType1(),
          CustomCardType2(
            name: 'FACULTAD DE INGENIERIA',
            imageUrl:
                'https://th.bing.com/th/id/R.bf5dd4e433cb8e3d918be9987cea309a?rik=R0Ed0Ww43RTXiA&riu=http%3a%2f%2fwww.oferta.unam.mx%2fassets%2fimg%2fdummies%2ffi1.jpg&ehk=%2bTuS6HMfRntVb6Rx2Qg7RdEWMNC4CdIOKyaekGfhxnM%3d&risl=&pid=ImgRaw&r=0',
            linkurl: 'https://www.ingenieria.unam.mx/index.php',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: 'DIVISION DE CIENCIAS BASICAS',
            imageUrl:
                'https://th.bing.com/th/id/R.9a877845509846b9a4d30e7a51ce179c?rik=V9mdbkzyBr%2ffYA&riu=http%3a%2f%2fcomputacion.fi-b.unam.mx%2fimages%2flogos%2ffi01.png&ehk=U0yvNti2bi9kF39W1Es7CWyObpTt82xv1M%2fBOPdc7Vk%3d&risl=&pid=ImgRaw&r=0',
            linkurl: 'https://dcb.ingenieria.unam.mx/',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: 'Horarios de asignaturas',
            imageUrl:
                'https://exitocol.vtexassets.com/arquivos/ids/277914/Reloj-Pared-Casio-Digital-Termometro-Hora-Fecha-Alarma-Id15.jpg?v=637002907487800000',
            linkurl: 'https://www.ssa.ingenieria.unam.mx/horarios.html',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: 'BIBLIOTECA VIRTUAL FACULTAD DE INGENIERIA',
            imageUrl:
                'https://th.bing.com/th/id/OIP.P5wpIyvdCEXF5fD5nIrskQHaE8?pid=ImgDet&rs=1',
            linkurl: 'https://www.ingenieria.unam.mx/bibliotecas/',
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
