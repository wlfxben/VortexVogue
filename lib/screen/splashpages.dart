import 'dart:async';

import 'package:bshoes/theme.dart';
import 'package:flutter/material.dart';


class Splashpage extends StatefulWidget {
  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {

@override
  void initState() {
    // TODO: implement initState
 Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in',));
 

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,

      body: Center(
        child: Container(
          width: 180,
          height: 180,
          decoration: const BoxDecoration(  
            image: DecorationImage(
              image: AssetImage('assets/AsikJos1.png',)
              )
          )
        ),
      ),

    ) ;
  } 
}
