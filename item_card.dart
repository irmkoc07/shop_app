import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press; // 🛠️ DÜZELTME: 'Function' yerine 'VoidCallback' kullanıldı.

  const ItemCard({
    super.key,
    required this.product, // 🛠️ DÜZELTME: 'required' eklenerek zorunlu hale getirildi.
    required this.press,   // 🛠️ DÜZELTME: 'required' eklenerek zorunlu hale getirildi.
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ), // BoxDecoration
              child: Image.asset(product.image, fit: BoxFit.contain),
            ),
          ), // Expanded Container
          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextLightColor), 
            ), // Text
          ), 
      
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ], // <Widget>[]
      ),
    );
  }
}