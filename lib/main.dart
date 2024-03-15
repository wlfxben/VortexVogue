

import 'package:bshoes/screen/home/detail_chatpage.dart';
import 'package:bshoes/screen/home/main_pages.dart';
import 'package:bshoes/screen/signinpages.dart';
import 'package:bshoes/screen/signuppages.dart';
import 'package:bshoes/screen/splashpages.dart';
import "package:flutter/material.dart";
import "theme.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context){
return MaterialApp( 
  debugShowCheckedModeBanner: false,
  routes: {
    '/':(context) => Splashpage(),
    '/sign-in':(context) => SignInPages(),
    '/sign-up':(context) => SignUpPages(),
    '/home':(context) => MainPage(),
    '/detail-chat':(context) => DetailChatPage(),
  },
 
);   

}

}


