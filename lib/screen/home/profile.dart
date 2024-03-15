import 'package:bshoes/theme.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    Widget header(){
      return AppBar(
        backgroundColor: textboxColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/Group 1347.png', width: 60,
                    ),                   
                ),
            const    SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hallow, Dhana',
                        style: thirdtextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        ),
                        Text('@wlfxben', style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                        ),
                    ],
                  )
                  ),
                  Image.asset(
                    'assets/Exit Button.png', width: 20 ,
                    ),
              ],
            ),
          ),
          ),
      );
    }

    Widget menuItem(String text ){
      return Container(
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text, style: profileTextStyle.copyWith(fontSize: 16),
              ),
              Icon(Icons.chevron_right,
              color: profilecolor,
              ),
          ],
        ),
      ); 
    }

    Widget content(){
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          width: double.infinity,
          decoration: BoxDecoration(
            color: bgColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Account', style: thirdtextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              ),
              menuItem(
                'Edit Profile', 
                ),
                 menuItem(
                'Your Orders', 
                ),
                 menuItem(
                'Help', 
                ),
                SizedBox(
                  height: 30,
                ),
                 Text('General', style: thirdtextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              ),
                menuItem(
                'Privacy & Policy', 
                ),
                 menuItem(
                'Term of Service', 
                ),
                 menuItem(
                'Rate App', 
                ),
            ],
          ),
        ),
        );
    }

   return Column(
    children: [
      header(),
      content(),
    ],
   );
  }
} 