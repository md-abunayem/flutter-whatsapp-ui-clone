import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui_clone/Screens/Home/homeScreen.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedImage;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            UiHelper.CustomText(text: "Profile info",
                height: 20,
                textColor: Color(0xFF00A884,),
                fontWeight: FontWeight.w700),
            SizedBox(
              height: 60,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(
                        color: Color(0xFF5E5E5E),
                        height: 1.8,
                        fontSize: 16
                    ),
                    children: [
                      TextSpan(
                          text: "Please provide your name and an optional\nprofile photo"
                      )
                    ]
                )
            ),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                _showBottomSheet(context);
              },
              child: pickedImage == null ? CircleAvatar(
                radius: 90,
                backgroundColor: Color(0xFFD9D9D9),
                child: Image.asset(
                  "assets/images/camera.png", height: 60, fit: BoxFit.cover,),
              ) : CircleAvatar(
                radius: 90,
                backgroundImage: FileImage(pickedImage!),
              )
            ),
            SizedBox(height: 70,),
            SizedBox(
              width: 350,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "Type your name here",
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF05AA82))
                          )
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/face.png", height: 50, fit: BoxFit.cover,)
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.CustomButton(callback: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomeScreen();
        }));
      }, buttonName: "Next"),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {
                  _pickImage(ImageSource.gallery);
                }, icon: Icon(Icons.image, size: 80, color: Colors.grey,),
                ),
                IconButton(onPressed: () {
                  _pickImage(ImageSource.camera);
                },
                  icon: Icon(Icons.camera_alt, size: 80, color: Colors.grey,),
                )

              ],
            ),
          );
        }
    );
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