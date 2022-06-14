import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class CustomCardType3 extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CustomCardType3({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: 200,
            height: 190,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 800),
          ),
          Container(
            alignment: AlignmentDirectional.topEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.indigo.shade900,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CardScreen(),
                  ));
                },
                child: Text(name)),
          ),
        ],
      ),
    );
  }
}

class _CustomCardtype3 extends StatelessWidget {
  const _CustomCardtype3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
