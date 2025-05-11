import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/LogInScreen/loginscreen.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class OnBoardingScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/onboarding.png"),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(text: "Welcome to WhatsApp", height: 20, fontWeight: FontWeight.w700, textColor: Color(0xFF000000)),
            SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
              style: TextStyle(         //base style
                fontSize: 14,
                height: 1.5,
              ),
              children: [
                TextSpan(text: "Read out",style: TextStyle(fontSize: 14, color: Color(0xFF5E5E5E))),
                TextSpan(text: " Privacy Policy.",style: TextStyle(fontSize: 14,color: Color(0xFF0C42CC))),
                TextSpan(text: " Tap “Agree and continue” ",style: TextStyle(fontSize: 14,color: Color(0xFF5E5E5E))),
                TextSpan(text: "\nTo accept the ",style: TextStyle(fontSize: 14,color: Color(0xFF5E5E5E))),
                TextSpan(text: "Teams of Service.",style: TextStyle(fontSize: 14,color: Color(0xFF0C42CC))),
              ]
            ),
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return LogInScreen();
        }));
      }, buttonName: "Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}