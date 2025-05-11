import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class CameraScreen extends StatefulWidget{
  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(text: "Capture photo", height: 25,fontWeight: FontWeight.w700),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                _showBottomSheet(context);
              },
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey,
                child: Icon(Icons.camera_alt,size: 35,color: Color(0xFFF5F5F5),),
              ),
            )
          ],
        )
      ),
    );
  }

  _showBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (BuildContext context){
        return Container(
            height: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {
                _pickImage(ImageSource.gallery);
              }, icon: Icon(Icons.image,size: 80,color: Colors.grey,),),
              IconButton(onPressed: () {
                _pickImage(ImageSource.camera);
              }, icon: Icon(Icons.camera_alt,size: 80,color: Colors.grey,),)
            ],
          ),
        );
    });
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);   //taken photo from where---gallery or camera
      if(photo == null){    //does not chose image
        return;
      }
      final tempImage = File(photo.path);   //else part--taken photo
      setState(() {
        pickedImage = tempImage;
      });
    } catch(ex){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(ex.toString()),backgroundColor: Color(0xFF00A884),));
    }
  }
}