import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class StatusScreen extends StatelessWidget {
  var arrRecentUpdates = [
    {
      'image':
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      'name': "Aron",
      'statusTime': "5:44 am"
    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyzTWQoCUbRNdiyorem5Qp1zYYhpliR9q0Bw&s",
      'name': "Michel",
      'statusTime': "7:00 am"
    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxFs5aIbWSFMQUksiZE2k40CzeAcb5RC7P_g&s",
      'name': "Hendry Perry",
      'statusTime': "8:33 pm"
    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa4xjShh4ynJbrgYrW_aB4lhKSxeMzQ3cO_A&s",
      'name': "Amelia Kaur",
      'statusTime': "10:23 am"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: UiHelper.CustomText(text: "Status", height: 20),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Stack(children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2013/07/13/12/07/avatar-159236_1280.png"),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Color(0xFF008665),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  radius: 15,
                ),
              )
            ]),
            title: UiHelper.CustomText(text: "My Status", height: 16),
            subtitle: UiHelper.CustomText(
                text: "Tap to add status update", height: 14),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(text: "Recent updates", height: 16),
                Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: arrRecentUpdates.length,
              itemExtent: 90,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      arrRecentUpdates[index]["image"].toString(),
                    ),
                  ),
                  title: UiHelper.CustomText(text: arrRecentUpdates[index]['name'].toString(), height: 18,fontWeight: FontWeight.w600),
                  subtitle: UiHelper.CustomText(text: arrRecentUpdates[index]['statusTime'].toString(), height: 16),

                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
