import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UNAM (sitios web)'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: const [
            CustomCardType2(
              name: 'UNIVERSIDAD NACIONAL AUTONOMA DE MEXICO',
              imageUrl:
                  'https://th.bing.com/th/id/R.79437071f74385b01ffb3914dea44e61?rik=%2fzew5r7j1Wud9g&pid=ImgRaw&r=0',
              linkurl: 'https://www.unam.mx/',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'DIRECCION GENERAL ADMINISTRACION ESCOLAR',
              imageUrl:
                  'https://www.eluniversal.com.mx/sites/default/files/2020/12/08/010unam_cu_2.jpg',
              linkurl: 'https://www.dgae.unam.mx/',
            ),
            CustomCardType2(
              name: 'SISTEMA INTEGRAL DE ADMINISTRACION ESCOLAR',
              imageUrl:
                  'https://th.bing.com/th/id/OIP.LsiNHeVykuSGU54MMtMZEgHaDz?w=318&h=179&c=7&r=0&o=5&pid=1.7',
              linkurl: 'https://www.dgae-siae.unam.mx/',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'DIRECCION GENERAL DEL DEPORTE UNIVERSITARIO',
              imageUrl:
                  'https://th.bing.com/th/id/OIP.fPFeMg89d4mFy0MBAPnlZwHaDM?pid=ImgDet&rs=1',
              linkurl: 'https://deporte.unam.mx/',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'BIBLITECA UNAM',
              imageUrl:
                  'https://th.bing.com/th/id/R.d300b59fed8d103c8e48d78170a37754?rik=JxSXQ5loQzqPWQ&pid=ImgRaw&r=0',
              linkurl:
                  'https://www.getyourguide.es/-l114797/?cmp=bing&campaign_id=377190749&adgroup_id=1243548211461953&target_id=dat-2329521542036161%3Aloc-119&match_type=b&ad_id=77721894651860&msclkid=69f3104aa8e81702fe9472d7ede72aef&loc_physical_ms=142543&feed_item_id=&keyword=%2F-tc1%20www.getyourguide.es&partner_id=CD951&utm_medium=paid_search&utm_source=bing&utm_campaign=ct%3Ddsa%7Cln%3D109%3Aes%7Ctc%3Dall&utm_term=%2F-tc1%20www.getyourguide.es&gclid=69f3104aa8e81702fe9472d7ede72aef&gclsrc=3p.ds&utm_content=ct%3Ddsa%7Cfn%3Df1%7Ccat%3D1%3Atour&fromCollection=1',
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ));
  }
}
