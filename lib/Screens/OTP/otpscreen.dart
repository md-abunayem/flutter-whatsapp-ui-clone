import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/Profile/profilescreen.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class OTPScreen extends StatelessWidget {
  String? phoneNumber;

  OTPScreen({required this.phoneNumber});

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            UiHelper.CustomText(
                text: "Verifying your number",
                height: 20,
                textColor: Color(0xFF00A884),
                fontWeight: FontWeight.w700),
            SizedBox(
              height: 60,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  height: 1.8,
                  color: Color(0xFF5E5E5E),
                ),
                children: [
                  TextSpan(
                      text:
                      "You’ve tried to register $phoneNumber \nrecently. Wait before requesting an sms or a call.\nwith your code."),
                  WidgetSpan(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        " Wrong number?",
                        style: TextStyle(color: Color(0xFF00A884)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainer(otp1Controller),
                CustomContainer(otp2Controller),
                CustomContainer(otp3Controller),
                CustomContainer(otp4Controller),
                CustomContainer(otp5Controller),
                CustomContainer(otp6Controller),
              ],
            ),
            SizedBox(height: 50,),
            UiHelper.CustomText(text: "Didn’t receive code?", height: 16, textColor: Color(0xFF00A884))
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: () => Navigator.push(context, MaterialPageRoute(builder: (context){
        return ProfileScreen();
      })), buttonName: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


Widget CustomContainer(TextEditingController controller) {
  return Container(
    height: 55,
    width: 55,
    decoration: BoxDecoration(
      color: Color(0xFFD9D9D9),
      borderRadius: BorderRadius.circular(10)
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
      ),
    ),
  );
}
