import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

//*clase listview1_screen de la forma peresosa
class Listview2Screen extends StatelessWidget {
  final options = const ['SPORTPUMAS', 'REDPUMA', 'CONTROL ESC', 'SIAE'];
  final linkurl = const [
    'https://subes.becasbenitojuarez.gob.mx/',
    'https://www.riu.unam.mx/',
    'http://escolar.ingenieria.unam.mx/',
    'https://www.dgae.unam.mx/'
  ];
  final i = 0;
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Listview Tipo 2'),
            elevation: 0,
            backgroundColor: Colors.red),
        //*lista con separacion
        body: ListView.separated(
          itemCount: options.length, //inicio de la lista ref a cantidad

          //crea algun elemento
          // listTile  vrea listas precargadas
          itemBuilder: (context, index) => ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.link_rounded),
              onTap: () {
                if (options[index] == linkurl[i + 1]) {
                  launch(linkurl[i]);
                } else {
                  launch(linkurl[i]);
                }
                //launch('https://www.codea.app/blog/cargar-url-flutter');
                //Navigator.pushNamed(context, menuOptions[index].route);
              }
              //  sirve para resivir una funcion que no regresa nada
              ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
