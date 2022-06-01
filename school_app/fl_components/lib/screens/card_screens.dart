import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('UNAM (sitios web principales)'),
            backgroundColor: Colors.indigo.shade900),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: const [
            // CustomCardType1(),

            CustomCardType2(
              name: 'UNIVERSIDAD NACIONAL AUTONOMA DE MEXICO',
              imageUrl:
                  'https://th.bing.com/th/id/R.79437071f74385b01ffb3914dea44e61?rik=%2fzew5r7j1Wud9g&pid=ImgRaw&r=0',
              linkurl: 'https://www.unam.mx/',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'SISTEMA INTEGRAL DE ADMINISTRACION ESCOLAR',
              imageUrl:
                  'https://th.bing.com/th/id/OIP.LsiNHeVykuSGU54MMtMZEgHaDz?w=318&h=179&c=7&r=0&o=5&pid=1.7',
              linkurl: 'https://www.dgae-siae.unam.mx/',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'DIRECCION GENERAL DEL DEPORTE UNIVERSITARIO',
              imageUrl:
                  'https://th.bing.com/th/id/OIP.fPFeMg89d4mFy0MBAPnlZwHaDM?pid=ImgDet&rs=1',
              linkurl: 'https://deporte.unam.mx/',
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
