import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class MenuFiunam extends StatelessWidget {
  const MenuFiunam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 350,
        //*color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text('UNAN Y FACULTAD DE INGENIERIA',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              children: const [
                CustomCardType3(
                  name: 'UNIVERSIDAD NACIONAL AUTONOMA DE MEXICO',
                  imageUrl:
                      'https://th.bing.com/th/id/R.79437071f74385b01ffb3914dea44e61?rik=%2fzew5r7j1Wud9g&pid=ImgRaw&r=0',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomCardType3(
                  name: 'FACULTAD DE INGENIRIA',
                  imageUrl:
                      'https://th.bing.com/th/id/R.c7ef8ddf0554d5e194f52c46272df7d2?rik=wY%2byX4vAoXaeqw&riu=http%3a%2f%2fwww.oferta.unam.mx%2fassets%2fimg%2fdummies%2ffi2.jpg&ehk=4cB23oevztpWzKzZfycp4qJtz1KwAg2IWFPA3SrOJMA%3d&risl=&pid=ImgRaw&r=0',
                ),
              ],
            ))
          ],
        ));
  }
}
