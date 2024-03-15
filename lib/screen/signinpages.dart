import 'package:bshoes/theme.dart';
import 'package:flutter/material.dart';

class SignInPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Sign In', 
                style: thirdtextStyle.copyWith(
                  fontSize: 30,
                  fontWeight: semiBold,
                ),),
                const SizedBox(height: 2, ),
                Text('Sign In to Continue',
                style: subtitleTextStyle,),

        ]),
      );
    }

  Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email Address', style: thirdtextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
          ),
        SizedBox(height: 15, ), //SizedBox
        Container(height: 50, padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: textboxColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Row(
          children: [
            Image.asset('assets/Email_Icon.png', 
            width: 17,),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TextFormField(
              decoration: InputDecoration.collapsed(
                hintText: 'Your Email Address',
                hintStyle: subtitleTex2tStyle,
              ),
            ),
            ),
          ],
        ),
        ),
        ), 
        ],
        

      ));
       
        
  }

 Widget passwordInput() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Password', style: thirdtextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
          ),
        SizedBox(height: 15, ), //SizedBox
        Container(height: 50, padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: textboxColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Row(
          children: [
            Image.asset('assets/Password_Icon.png', 
            width: 17,),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TextFormField(
              obscureText: true,
              decoration: InputDecoration.collapsed(
                hintText: 'Your Password',
                hintStyle: subtitleTex2tStyle,
              ),
            ),
            ),
          ],
        ),
        ),
        ), 
        ],
        

      ));
       
        
  }

  Widget signInbutton () {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 35),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )
        ),
        child: Text(
          'Sign In',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }


Widget footer() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Don\'t Have an Account?  ', style: subtitleTex2tStyle.copyWith(
          fontSize: 12,
        ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/sign-up');
          },
          child: Text('Sign Up',
          style: purpletextStyle.copyWith(
            fontSize: 12,
            fontWeight: medium,
          ),
          ),
        ),
        
      ],
      ),
    );

}




    return Scaffold(
      backgroundColor: bgColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              signInbutton(),
              Spacer(),
              footer(),
            ]
            ),
        ),
      )
    );
  }
}
