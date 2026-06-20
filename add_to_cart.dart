import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50, //
            width: 58, //
            decoration: BoxDecoration(
              border: Border.all(color: product.color), //
              borderRadius: BorderRadius.circular(18), //
            ), // BoxDecoration
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg", 
                color: product.color,// Sepete ekle ikon yolu
              ), // SvgPicture.asset
              onPressed: () {}, // Tıklama aksiyonu
            ), // IconButton
          ), // Container
          
          SizedBox(
            height: 50, //
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: product.color, // FlatButton 'color' yerine güncel kullanım
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18), // Buton köşelerini yuvarlatmak için
                ),
              ),
              onPressed: () {}, //
              child: Text(
                "Buy Now".toUpperCase(), //
                style: const TextStyle(
                  fontSize: 17, //
                  fontWeight: FontWeight.bold, //
                  color: Colors.white, //
                ), // TextStyle
              ), // Text
            ), // TextButton
          ), // SizedBox
        ], // <Widget>[]
      ), // Row
    );
  }
}