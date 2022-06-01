import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['SPORTPUMAS', 'REDPUMA', 'CONTROL ESC', 'SIAE'];
  final linkurl = const [
    'https://subes.becasbenitojuarez.gob.mx/',
    'https://www.riu.unam.mx/',
    'http://escolar.ingenieria.unam.mx/',
    'https://www.dgae.unam.mx/'
  ];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Listview Tipo 2'),
            elevation: 0,
            backgroundColor: Colors.red),
        body: ListView.separated(
          itemCount: options.length, //inicio de la lista ref a cantidad
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.link_rounded),
            onTap: () {},
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
