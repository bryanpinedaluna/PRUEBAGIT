import 'package:flutter/material.dart';
import "package:fl_components/screens/screens.dart";
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('BIENVENIDO'),
          //elevation: 0,
        ),
        body: Center(
          child: mostrador(),
        ));
  }
}

Widget mostrador() {
  return Column(children: <Widget>[
    Expanded(
      child: contenedores(
          400,
          200,
          "https://th.bing.com/th/id/R.54f55f2e17c220a2deae5ceda25ae798?rik=24gvCRP%2f5NutMQ&pid=ImgRaw&r=0",
          "UNAM",
          "card"),
    ),
    Expanded(
      child: contenedores2(
          400,
          200,
          "https://static.wixstatic.com/media/09952d_11bf5469779f46d09e9cc7fa9b1395fe.jpg",
          "FACULTAD DE INGENIERIA",
          "listview1"),
    ),
  ]);
}
