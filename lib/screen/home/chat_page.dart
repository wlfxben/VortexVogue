import 'package:bshoes/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget header(){
      return SizedBox(
        width: 480,
        child: AppBar(
          elevation: 3,
          backgroundColor: atascolor,
          centerTitle: true,
          title: Text(
            'Message Support',
            style: nameTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          automaticallyImplyLeading: false,
        ),
      );
    }

    Widget emptyChat (){

        return Expanded(
    child: Container(
      width: double.infinity,
      color: bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/Headset Icon.png',
            width: 130,
            ),
            SizedBox(height: 20,),
            Text(
              'No Message',
              style: nameTextStyle.copyWith(
                fontSize: 25,
                fontWeight: medium,
              ),
            ),
            SizedBox(height: 12,),
             Text(
              'You have never done a transaction',
              style: secondaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
             ),

             SizedBox(
              height: 20,
             ),
             Container(
              height: 44,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 10, 
                  ),
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                 child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  )
                  ),
             )
        ],
      ),
    ),
  );

    }


 Widget content(){
  return Expanded(
    child: Container(
      width: double.infinity,
      color: bgColor,
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ChatTile(),
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