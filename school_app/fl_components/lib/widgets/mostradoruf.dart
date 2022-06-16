import 'package:flutter/material.dart';

class MostradorUF extends StatelessWidget {
  const MostradorUF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        color: Colors.indigo,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('DEMO FACULTADES',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
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
      width: 130,
      height: 190,
      color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
  }
}
