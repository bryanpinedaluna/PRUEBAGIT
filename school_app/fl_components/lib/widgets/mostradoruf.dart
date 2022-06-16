import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class MostradorUF extends StatelessWidget {
  const MostradorUF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        color: Colors.indigo,
        child: Column(
          children: [
            //crossAxisAlignment: CrossAxisAlignment.center,
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('UNAN Y FI',
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.normal))),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (_, int index) => const _MostradorUF()),
            ),
          ],
        ));
  }
}

class _MostradorUF extends StatelessWidget {
  const _MostradorUF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 400,
      color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}
