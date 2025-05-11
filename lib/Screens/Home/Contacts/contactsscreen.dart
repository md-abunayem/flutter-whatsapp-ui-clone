import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class ContactsScreeen extends StatelessWidget {
  var arrContacts = [
    {
      'image':
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      'name': "Franklin",
      "status" : "Always open for you"

    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyzTWQoCUbRNdiyorem5Qp1zYYhpliR9q0Bw&s",
      'name': "Jonathon",
      "status" : "You can make call anytime anywhere"

    },
    {
      'image':
          "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
      'name': "Sarah",
      "status" : "Hey there! I am using WhatsApp"

    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxFs5aIbWSFMQUksiZE2k40CzeAcb5RC7P_g&s",
      'name': "Grace",
      "status" : "Call me tomorrow"

    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa4xjShh4ynJbrgYrW_aB4lhKSxeMzQ3cO_A&s",
      'name': "Amelia Kaur",
      "status" : "Hey there! I am using WhatsApp"

    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYAeUmsNexUBNRCdqtRdz326sKihjviugu8OQnY1_A72YvRG1R59V98LPKEQJlqEJS3WQ&usqp=CAU",
      'name' : "Michel",
      'status': "***Simplicity is always beautiful***"

    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTefdAYZ6uy2rn4ODl9zSL1KwCAhiEPo9Xm-g&s",
      'name': "Eve",
      "status" : "Urgent calls only"

    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5iB1zY-OM0aoh3RIhLR_j94LlzNEBtXynTA&s",
      'name': "Jonathon",
      "status" : "Busy Now"

    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5Gy1FV8gSDjGaD9eMKhYDbH9P2YtsLEBblA&s",
      'name': "Agnes",
      "status" : "Hey there! I am using WhatsApp"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
            text: "Select contact", height: 25, textColor: Colors.white,fontWeight: FontWeight.w700),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left:22.0),
            child: UiHelper.CustomText(text: 'Contacts on WhatsApp', height: 18),
          ),
          SizedBox(
            height: 20,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: arrContacts.length,
                itemExtent: 90,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(arrContacts[index]["image"].toString()),
                    ),
                    title: UiHelper.CustomText(text: arrContacts[index]['name'].toString(), height: 18, fontWeight: FontWeight.w700),
                    subtitle: UiHelper.CustomText(text: arrContacts[index]['status'].toString(), height: 13),
            
                  );
                }),
          )
        ]
      )
      ,
    );
  }
}
