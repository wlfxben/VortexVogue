import 'package:flutter/material.dart';
import 'package:bshoes/theme.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin:  EdgeInsets.only(
          top: 33,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/Logo Shop Picture.png',
                  width: 54,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shoe Store',
                          style: nameTextStyle.copyWith(
                            fontSize: 15,
                          ),
                          ),
                          Text(
                            'Good night, This item is on...',
                            style: nameTextStyle.copyWith(
                              fontWeight: light,
                            ),
                            overflow: TextOverflow.ellipsis,
                            ),                       
                      ],
                    ),
                  ),
                  Text(
                    'Now',
                    style: secondaryTextStyle.copyWith(
                      fontSize: 10,
                    ),
                    ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              color: Color(0xffC2C1C3),
            )
          ],
        ),
      ),
    );
  }
}