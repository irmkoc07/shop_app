import 'package:flutter/material.dart';


import '../../../constants.dart';
import '../../../models/Product.dart';class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(color: Color(0xFF356C95),isSelected:true,),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ), // Row (ColorDot'ları saran iç Row kapatıldı)
            ], // Column <Widget>[]
          ),
        ), // Column
    Expanded(
      child: RichText(
        text: TextSpan(
          style: const TextStyle(color: kTextColor),
          children: [
            const TextSpan(text: "Size\n"),
            TextSpan(
              text: "${product.size} cm",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ), // TextSpan
          ],
        ), // TextSpan
      ),
    ) // RichText
     
      ], // Row <Widget>[]
    );
  }
}

class ColorDot extends StatelessWidget {
  // late kelimesi kaldırıldı ve varsayılan bir renk (gri) atandı
  final Color color; 
  final bool isSelected;
  
  const ColorDot({
    super.key,
    // Eğer dışarıdan renk verilmezse otomatik olarak gri renk alacak
    this.color = const Color(0xFF356C95), 
    this.isSelected = false,
  });
  
@override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          // DÜZELTME: Color.transparent yerine Colors.transparent yapıldı
          color: isSelected ? color : Colors.transparent, 
        ), // Border.all
      ), // BoxDecoration
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color, 
          shape: BoxShape.circle,
        ), // BoxDecoration
      ), // DecoratedBox
    );
  }
}