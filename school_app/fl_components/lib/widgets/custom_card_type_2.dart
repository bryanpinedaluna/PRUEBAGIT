import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'paquete:url_launcher/url_launcher_string.dart';

class CustomCardType2 extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String linkurl;

  const CustomCardType2(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.linkurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 10,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 800),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child:
                //Text(name)
                // children: [
                TextButton(
                    onPressed: () {
                      // launchUrl(this.linkurl);
                    },
                    child: Text(name)),
            //TextButton(onPressed: () {}, child: const Text('ok')),
            //],
          ),
        ],
      ),
    );
  }
}
