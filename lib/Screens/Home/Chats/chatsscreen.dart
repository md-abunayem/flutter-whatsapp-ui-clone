import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/Home/Contacts/contactsscreen.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      'image': "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      'name': "Aron",
      'lastMsg': "Hello! How are you?",
      'time': "7:27 am",
      'noOfMsg': 4,
    },
    {
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyzTWQoCUbRNdiyorem5Qp1zYYhpliR9q0Bw&s",
      'name': "Michel",
      'lastMsg': "Ok",
      'time': "8:27 am",
      'noOfMsg': 9,
    },
    {
      'image': "https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
      'name': "Alisha Mikes",
      'lastMsg': "I am done with my job.",
      'time': "7:44 pm",
      'noOfMsg': 3,
    },
    {
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxFs5aIbWSFMQUksiZE2k40CzeAcb5RC7P_g&s",
      'name': "Hendry Perry",
      'lastMsg': "How was the day?",
      'time': "10:00 pm",
      'noOfMsg': 1,
    },
    {
      'image':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa4xjShh4ynJbrgYrW_aB4lhKSxeMzQ3cO_A&s",
      'name': "Amelia Kaur",
      'lastMsg': "Done!",
      'time': "11:56 pm",
      'noOfMsg': 5,
    },
    {
      'image':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYAeUmsNexUBNRCdqtRdz326sKihjviugu8OQnY1_A72YvRG1R59V98LPKEQJlqEJS3WQ&usqp=CAU",
      'name': "Jorge",
      'lastMsg': "The company will be running after 7 days.",
      'time': "yesterday",
      'noOfMsg': 4,
    },
    {
      'image' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTefdAYZ6uy2rn4ODl9zSL1KwCAhiEPo9Xm-g&s",
      'name': "Jesica",
      'lastMsg': "What are you doing?",
      'time': "yesterday",
      'noOfMsg': 2,
    },
    {
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5iB1zY-OM0aoh3RIhLR_j94LlzNEBtXynTA&s",
      'name': "Jonathon",
      'lastMsg': "Ok",
      'time': "8:27 am",
      'noOfMsg': 9,
    },
    {
      "image" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5Gy1FV8gSDjGaD9eMKhYDbH9P2YtsLEBblA&s",
      'name': "Martina",
      'lastMsg': "I am done with my job.",
      'time': "7:44 pm",
      'noOfMsg': 3,
    },
    {
      'image' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThS6aCF7u_X-AuA5p2x3FBhCQSZsElWXZXgQ&s",
      'name': "Sabrina",
      'lastMsg': "How was the day?",
      'time': "10:00 pm",
      'noOfMsg': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: arrContent.length,
          itemExtent: 80,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  arrContent[index]["image"].toString(),
                ),
              ),
              title: UiHelper.CustomText(text: arrContent[index]['name'].toString(), height: 14,textColor: Color(0xFF000000),fontWeight: FontWeight.w700),
              subtitle: UiHelper.CustomText(text: arrContent[index]['lastMsg'].toString(), height: 13, textColor: Color(0xFF889095)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  UiHelper.CustomText(text: arrContent[index]['time'].toString(), height: 12, textColor: Color(0xFF026500),),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0xFF036A01),
                    child: UiHelper.CustomText(text: arrContent[index]['noOfMsg'].toString(), height: 12,textColor: Color(0xFFFFFFFF)),
                  )
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context){
          return ContactsScreeen();
        })),
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Color(0xFF008665),
          child: Image.asset("assets/images/message_icon.png",height: 25,fit: BoxFit.cover,),
        ),
      ),

    );
  }
}
