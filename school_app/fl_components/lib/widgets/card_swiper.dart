import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      //color: Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.height * 0.6,
        itemHeight: size.height * 0.4,
        itemBuilder: (_, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: NetworkImage(
                  'https://th.bing.com/th/id/OIP._I84M8M0i2PgdpX1NMO-aAHaEK?w=279&h=180&c=7&r=0&o=5&pid=1.7'),
              image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.jOiUq_fT1Tpe4rr1V9snFAHaE7?w=261&h=180&c=7&r=0&o=5&pid=1.7'),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
