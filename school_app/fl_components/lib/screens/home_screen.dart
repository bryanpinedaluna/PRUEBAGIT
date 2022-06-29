import 'package:flutter/material.dart';
import "package:fl_components/screens/screens.dart";
import 'package:fl_components/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BIENVENIDO'),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              CardSwiper(),
              MenuFiunam(),
              Facultadeslist(),
              //mostrador(),
            ],
          ),
        ));
  }
}

Widget mostrador() {
  return Row(children: <Widget>[
    Expanded(
      child: Contenedores(
          400,
          250,
          "https://th.bing.com/th/id/R.54f55f2e17c220a2deae5ceda25ae798?rik=24gvCRP%2f5NutMQ&pid=ImgRaw&r=0",
          "UNAM",
          "card"),
    ),
    const SizedBox(
      height: 10,
    ),
    Expanded(
      child: Contenedores2(
          400,
          250,
          "https://static.wixstatic.com/media/09952d_11bf5469779f46d09e9cc7fa9b1395fe.jpg",
          "FACULTAD DE INGENIERIA",
          "listview1"),
    ),
  ]);
}
