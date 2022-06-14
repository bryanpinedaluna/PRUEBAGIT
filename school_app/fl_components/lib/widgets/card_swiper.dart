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
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.height * 0.4,
        itemHeight: size.height * 0.4,
        itemBuilder: (_, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: const FadeInImage(
              placeholder: NetworkImage('assets/'),
              image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.geYGtNny22qRLgXJ1SXfNAHaFj?w=228&h=180&c=7&r=0&o=5&pid=1.7'),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
