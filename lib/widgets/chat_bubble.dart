import 'package:flutter/material.dart';
import 'package:bshoes/theme.dart';

class BubbleChat extends StatelessWidget {

 final String text;
 final bool isSender;
 final bool hasProduct;
 
 

 const BubbleChat({super.key,  this.isSender = false, this.text = '', this.hasProduct= false });

  @override
  Widget build(BuildContext context) {

    Widget productPreview(){
      return Container(
        width: 230,
        margin: EdgeInsets.only(bottom: 12,),
        padding: EdgeInsets.all(12),
         decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular( isSender? 12 :0),
                  topRight: Radius.circular( isSender? 0 :12),
                  bottomLeft: const Radius.circular(12),
                   bottomRight: const Radius.circular(12),
                ),
                color: isSender? atascolor:atascolor,
              ),
              child: Column(
                children: [
                  Row(
                   children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/shoes.png',
                       width: 70,
                       ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('COURT VISION 2.0 SHOES', 
                        style: thirdtextStyle,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text('\$57,15', style: priceTextStyle.copyWith(
                          fontWeight: medium,
                        ),)
                      ],
                    ),
                    ),
                   ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      OutlinedButton(onPressed: (){}, 
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: primaryColor,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )
                      ),
                      child: Text('Add to Cart',
                      style: purpleTextStyle, ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TextButton(onPressed: (){}, 
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                      child:Text('Buy Now', style: primaryTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                      ),
                      ),
                    ],
                  )
                ],
              ),
      );
    }


    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: isSender?  CrossAxisAlignment.end:CrossAxisAlignment.start,
        children: [
        hasProduct?  productPreview() : const SizedBox(),
          Row(
            mainAxisAlignment: isSender? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,             
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular( isSender? 12 :0),
                      topRight: Radius.circular( isSender? 0 :12),
                      bottomLeft: const Radius.circular(12),
                       bottomRight: const Radius.circular(12),
                    ),
                    color: isSender? primaryColor:atascolor,
                  ),
                  child: Text(
                    text,
                    style: isSender? primaryTextStyle:thirdtextStyle,
                    ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}