import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/Home/Calls/callsscreen.dart';
import 'package:whatsapp_ui_clone/Screens/Home/Camera/camerascreen.dart';
import 'package:whatsapp_ui_clone/Screens/Home/Chats/chatsscreen.dart';
import 'package:whatsapp_ui_clone/Screens/Home/Status/statusscreen.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 125,
          title: UiHelper.CustomText(
              text: "WhatsApp",
              height: 30,
              textColor: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w700),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Icon(
                Icons.search,
                size: 50,
                color: Color(0xFFFFFFFF),
              ),
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt,
                  size: 30,
                ),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(children: [
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ]),
      ),
    );
  }
}
