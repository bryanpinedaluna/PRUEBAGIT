import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
              onPressed: () {
                launch('https://www.dgae.unam.mx/');
              },
              child: const Text('DGEA')),
          const Image(
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.3a3ba6978e5baf763d2b017b7e009f1b?rik=rVTOkDVzIe0g0w&riu=http%3a%2f%2fwww.fi-b.unam.mx%2fimages%2facademico%2fdgae.jpg&ehk=0UQ12dJIGi3x447wKqGEtFpExcTKvYCMSg9EsLERx9Q%3d&risl=&pid=ImgRaw&r=0'))
        ],
      ),
    );
  }
}
