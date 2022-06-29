import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class MenuFiunam extends StatelessWidget {
  const MenuFiunam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        //color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('UNAM Y FACULTAD DE INGENIERIA',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      'https://th.bing.com/th/id/OIP.geYGtNny22qRLgXJ1SXfNAHaFj?w=228&h=180&c=7&r=0&o=5&pid=1.7',
                ),
              ],
            ))
          ],
        ));
  }
}
