import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_counter.dart';

// DÜZELTME: CounterWithFavBtn videodaki gibi bağımsız bir StatelessWidget sınıfı haline getirildi
class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Kalp butonunu sağ köşeye yaslar
      children: <Widget>[
        const CartCounter(), // Sol taraftaki sepet sayacı
        Container(
          padding: const EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: const BoxDecoration(
            color: Color(0xFFFF6464), // Favori pembe/kırmızı arka plan rengi
            shape: BoxShape.circle,
          ), // BoxDecoration
          child: SvgPicture.asset("assets/icons/heart.svg"), // Kalp ikonu
        ), // Container
      ],
    ); // Row
  }
}