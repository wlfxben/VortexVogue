import 'package:bshoes/theme.dart';
import 'package:bshoes/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class DetailChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

   header(){
      return PreferredSize(
        preferredSize: const Size.fromHeight(70),
         child: AppBar(
          backgroundColor: atascolor,
          centerTitle: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/logo_online.png',
                width: 50,             
                ),
              const  SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shoe Store',
                      style: nameTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 17,
                      ),
                      ),
                      Text('Online', style: secondaryTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 14,
                      ),)
                  ],
                )
            ],
          ),
         ),
      );
    }

  Widget productPreview(){
    return Container(
      width: 225,
      height: 74,
      margin:  const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: textboxColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: bordercolor,
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/shoes.png',
               width: 54,)
               ),
               SizedBox(
                width: 10,               
               ),
               Expanded(
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'COURT VISIO...',
                      style: thirdtextStyle,
                      overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '\$57,15',
                        style: priceTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                       ),
                  ],
                 ),
               ),
              Image.asset('assets/closebutton.png', width: 22,)
        ],
      ),
    );
  }
  

  Widget chatinput(){
    return Container(
     margin: const EdgeInsets.all(20),
     child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        productPreview(),
         Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: atascolor,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type Message... ',
                      hintStyle: subtitleTextStyle,                     
                    ),
                  ),
                ),
              ),
            ),
           const SizedBox(
              width: 20,
            ),
            Image.asset(
              'assets/Send Button.png',
              width: 45,
              )
          ],
         ),
       ],
     ),
    );
  }

  Widget content(){
    return ListView(
      padding:  EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children:  const [
       BubbleChat( 
          isSender: true,
          text: 'Hi! This item still available? ',
          hasProduct: true,
        ),
         BubbleChat( 
          isSender: false,
          text: 'Good night, This item is only available in size 42 and 43 ', 
        ),
      ],
    );
  }



    return Scaffold(
      backgroundColor: bgColor,
      appBar: header(),
      bottomNavigationBar: chatinput(),
      body: content(),
    );
  }
}