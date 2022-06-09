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
          return FadeInImage(
              placeholder: NetworkImage(
                  'https://th.bing.com/th/id/OIP.9Cev8VrPqNziPlUNDWX_LwHaHa?w=180&h=180&c=7&r=0&o=5&pid=1.7/300x400'),
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.edee9b1a1f9d877d030e506b85c6e454?rik=MwPCpROPk7HZeA&pid=ImgRaw&r=0'));
        },
      ),
    );
  }
}
