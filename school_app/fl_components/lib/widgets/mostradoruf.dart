import 'package:flutter/material.dart';

class MostradorUF extends StatelessWidget {
  const MostradorUF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 260,
        //color: Colors.indigo,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('FACULTADES',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 5,
            ),
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
      //color: Colors.green,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage(
                    'https://th.bing.com/th/id/R.54f55f2e17c220a2deae5ceda25ae798?rik=24gvCRP%2f5NutMQ&pid=ImgRaw&r=0'),
                width: 130,
                height: 190,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Facultad (nombre)',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
