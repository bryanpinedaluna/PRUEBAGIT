import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'REPOSITORIO ESCOLAR',
      initialRoute: 'home',
      routes: {'home': (_) => const HomeScreen()},
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}
