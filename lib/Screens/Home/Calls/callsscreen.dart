import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Widgets/uiHelper.dart';

class CallsScreen extends StatelessWidget {
  var arrRecentCalls = [
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYAeUmsNexUBNRCdqtRdz326sKihjviugu8OQnY1_A72YvRG1R59V98LPKEQJlqEJS3WQ&usqp=CAU",
      'name': "Jorge",
      'callTime': "Yesterday, 5:44",
      "noOfCall": 3,
    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyzTWQoCUbRNdiyorem5Qp1zYYhpliR9q0Bw&s",
      'name': "Michel",
      'callTime': "8th May, 7:00",
      "noOfCall": 2,
    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxFs5aIbWSFMQUksiZE2k40CzeAcb5RC7P_g&s",
      'name': "Hendry Perry",
      'callTime': "7th May, 23:00",
      "noOfCall": 7,
    },
    {
      'image':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa4xjShh4ynJbrgYrW_aB4lhKSxeMzQ3cO_A&s",
      'name': "Amelia Kaur",
      'callTime': "6th may, 10:23",
      "noOfCall": 5,
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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(
                    text: "Favourite", height: 20, fontWeight: FontWeight.bold),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                    decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)  
                    ),
                    child: UiHelper.CustomText(text: "More", height: 16,textColor: Colors.white))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage(arrRecentCalls[0]['image'].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: arrRecentCalls[0]['name'].toString(),
                      height: 18,
                      fontWeight: FontWeight.w700),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.call,
                          size: 30,
                        ),
                        Icon(
                          Icons.video_call,
                          size: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: UiHelper.CustomText(
                text: "Recent", height: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: arrRecentCalls.length,
                itemExtent: 90,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          arrRecentCalls[index]['image'].toString()),
                    ),
                    title: Row(
                      children: [
                        UiHelper.CustomText(
                          text: arrRecentCalls[index]['name'].toString(),
                          height: 18,
                          fontWeight: FontWeight.w700,
                        
                        ),
                        UiHelper.CustomText(text: " (${arrRecentCalls[index]['noOfCall'].toString()})", height: 18, fontWeight: FontWeight.w700)
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        index % 2 == 0
                            ? Icon(Icons.call_received,
                                color: Color(
                                  0xFF008665,
                                ))
                            : Icon(
                                Icons.call_made,
                                color: Color(0xFF008665),
                              ),
                        SizedBox(
                          width: 10,
                        ),
                        UiHelper.CustomText(
                            text: arrRecentCalls[index]['callTime'].toString(),
                            height: 13)
                      ],
                    ),
                    trailing: index % 2 == 0
                        ? Icon(
                            Icons.call,
                            size: 30,
                          )
                        : Icon(
                            Icons.video_call,
                            size: 30,
                          ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
