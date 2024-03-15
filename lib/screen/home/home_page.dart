import 'package:bshoes/screen/home/product_tile.dart';
import 'package:bshoes/theme.dart';
import 'package:bshoes/widgets/product_cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      
    Widget header(){
      return Container(
        margin: EdgeInsets.only(top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin, ),

        child: Row(children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Halow, Dhana', style:nameTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold
              ) 
              ), 
              Text('@wlfxben', 
              style: usnTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular
              ),),
            ],),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/Group 1347.png',),),
            ),
          ),
        ],
        ),
      );
    }
   
   Widget Categories(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin,),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
              ),
              child: Text(
                'All Shoes', 
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
                ),
            ),
      
           Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
                margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: colorborder,
                ),
                color: transparantcolor,
              ),
              child: Text(
                'Running', 
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
                ),
            ),
      
      
          Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
                margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: colorborder,
                ),
                color: transparantcolor,
              ),
              child: Text(
                'Training', 
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
                ),
            ),
      
          Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
                margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: colorborder,
                ),
                color: transparantcolor,
              ),
              child: Text(
                'Basketball', 
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
                ),
            ),
      
          
          Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
                margin: EdgeInsets.only(
                right: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: colorborder,
                ),
                color: transparantcolor,
              ),
              child: Text(
                'Hiking', 
                style: subtitleTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
                ),
            ),
      
      
      
      
      
      
          ],
        ),
      ),
    );
   }
   
  Widget popularProductsTitle(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Popular Products',
        style: thirdtextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),       
        ),
    );
  }  

  Widget popularProducts(){
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: defaultMargin,
          ),
          Row(children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),
          ],
          ),
        ],
      ),
      
      ),
      
    );
  }

Widget newArrivalTitle(){
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'New Arrivals',
        style: thirdtextStyle.copyWith(
          fontSize: 22,
          fontWeight: semiBold,
        ),       
        ),
    );
  }  


  Widget newArrival(){
    return Container(
      margin: EdgeInsets.only(top: 14,),
      child: Column(
        children: [
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),

        ],
      ),
    );
  }


    return ListView(
      children: [
        header(),
        Categories(),
        popularProductsTitle(),
        popularProducts(),
        newArrivalTitle(),
        newArrival(),
       
      ],
    );
  }

}