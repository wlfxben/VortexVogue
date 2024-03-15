import 'package:bshoes/theme.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
        ),
        child: Row(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
            'assets/shoes.png',
            width: 150,
            height: 150,
            fit: BoxFit.cover,           
            ),
          ),
         const SizedBox(
            width: 12,          
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Football',
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                ),
                ),
                SizedBox(
                  height: 6,
                  ),
                Text('Predator 20.3 Firm Ground',
                style: thirdtextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: semiBold,
                ),
                ),
                 SizedBox(
                  height: 6,
                  ),
                  Text(
                  '\$68,47',
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14,
                  ),)
            ],
          ))
        ],),
    );
  }
}