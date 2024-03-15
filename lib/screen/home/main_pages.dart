import 'package:bshoes/screen/home/chat_page.dart';
import 'package:bshoes/screen/home/home_page.dart';
import 'package:bshoes/screen/home/profile.dart';
import 'package:bshoes/screen/home/wishlist.dart';
import 'package:bshoes/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

int currentIndex = 0;




  @override
  Widget build(BuildContext context) {

    Widget cartButton(){
      return FloatingActionButton(onPressed: (){},
      backgroundColor: secondaryColor,
      child: Image.asset(
       'assets/cart_ikon.png',
       width: 26,
        ),
      );
    }

    Widget customBottomNav(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: bgnavColor,
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
            BottomNavigationBarItem(icon: Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Image.asset('assets/Home.png',
              width: 21,
              color: currentIndex == 0? primaryColor : Color(0xff808191),
              ),
            ),
            label: '',
            ),
            BottomNavigationBarItem(icon: Container(
               margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Image.asset('assets/icon_chat.png',
              width: 20,
              color: currentIndex == 1? primaryColor : Color(0xff808191),
              ),
            ),
            label: '',
            ),
             BottomNavigationBarItem(icon: Container(
               margin: EdgeInsets.only(top: 20, bottom: 10),
               child: Image.asset('assets/Union (1).png',
                         width: 20,
                         color: currentIndex == 2? primaryColor : Color(0xff808191),
                         ),
             ),
            label: '',
            ),
              
             BottomNavigationBarItem(icon: Container(
               margin: EdgeInsets.only(top: 20, bottom: 10),
               child: Image.asset('assets/Profile.png',
                         width: 18,
                         color: currentIndex == 3? primaryColor : Color(0xff808191),
                         ),
             ),
            label: '',
            ),
              
              
          ]
          ),
        ),
      );
    }

 Widget body(){
  switch (currentIndex) {
    case 0:
    return HomePage();
    
      
     case 1:
    return ChatPage();
     

     case 2:
    return Wishlist();
    
     case 3:
    return Profile();
     


    default: 
    return HomePage();
  
  }
    
  
 }
   

 

    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton:cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
      );
    
  }
}