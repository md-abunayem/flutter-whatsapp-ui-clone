import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper{

  static Widget CustomButton({required VoidCallback callback, required String buttonName}){
    return SizedBox(
      height: 35,
      width: 350,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )
        ),
        child: Text(buttonName,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700, color: Colors.white,),),

      ),
    );
  }

  static Widget CustomText({required String text, Color? textColor, required double height,FontWeight? fontWeight}){
    return Text(text, style: TextStyle(fontSize: height, color: textColor ?? Color(0xFF5E5E5E),fontWeight: fontWeight),);
  }

}

