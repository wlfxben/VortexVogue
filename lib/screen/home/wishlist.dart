import 'package:bshoes/theme.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return AppBar(
        backgroundColor: atascolor,
        centerTitle: true,
        title: Text(
          'Favourite Shoes', 
          style: nameTextStyle,
          ),
          elevation: 0,
          automaticallyImplyLeading: false,   
      );
    }

    Widget emptyWishlist (){
      return Expanded(
          child: Container(
            width: double.infinity,
            color: bgColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Love Icon.png',
                  width: 74,
                  ),
                 const SizedBox(
                    height: 23,
                  ),
                  Text(
                    'You don\'t have dream shoes?',
                    style: thirdtextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                    ),
                   const SizedBox( height: 12,),
                    Text(
                      'Let\'s find your favorite shoes',
                      style: secondaryTextStyle,
                      ),
                    const  SizedBox(height: 20,),
                      SizedBox(
                        height: 44,
                        child: TextButton(
                          onPressed: (){}, 
                          style: TextButton.styleFrom(
                            padding:const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 24,
                            ),
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)
                          )
                          ),
                          child: Text('Explore Store', style: primaryTextStyle.copyWith( fontSize: 16, fontWeight: medium ),),
                          ),
                      )
              ],
            ),
          ),
      );
    }


   return Column(
    children: [
      header(),
      emptyWishlist(),
    ],
   );
  }
} 