import 'package:flutter/material.dart';
import 'package:task_2/components/Timeline/NormalCard.dart';
import 'package:task_2/components/Timeline/NotificationCard.dart';

class Profile extends StatelessWidget {
  final String name = "Amal Chandran";

  List statusList = [
    {
      "name": "Alverta Cartwright",
      "userImg":
          "https://s3.amazonaws.com/uifaces/faces/twitter/derekcramer/128.jpg",
      "coverImg":
          "https://images.unsplash.com/photo-1579645009624-e726789ebdb9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
      "location": "Landon",
      "statusText": "From todays trip :)",
      "type": "Normal"
    },
    {"type": "Notification"},
    {
      "name": "Lexus Gutkowski",
      "userImg":
          "https://s3.amazonaws.com/uifaces/faces/twitter/jeremymouton/128.jpg",
      "coverImg":
          "https://images.unsplash.com/photo-1517426877272-57ff9b87d921?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
      "location": "Landon",
      "statusText": "A loving memory :)",
      "type": "Normal"
    },
    {
      "name": "Lexus Gutkowski",
      "userImg":
          "https://s3.amazonaws.com/uifaces/faces/twitter/jeremymouton/128.jpg",
      "coverImg":
          "https://images.unsplash.com/photo-1517426877272-57ff9b87d921?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80",
      "location": "Landon",
      "statusText": "A loving memory :)",
      "type": "Normal"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.black12),
          padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
          // padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: IconButton(
                      color: Colors.grey,
                      icon: Icon(Icons.inbox),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Container(
                // decoration: BoxDecoration(color: Colors.black26),
                padding: EdgeInsets.only(left: 40, top: 10.0, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset.fromDirection(90, 2))
                      ], shape: BoxShape.circle, color: Colors.black26),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text("Hello $name!",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    // decoration: BoxDecoration(color: Colors.black26),
                    padding: EdgeInsets.only(left: 37, top: 0),
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 0, bottom: 10),
                      itemCount: statusList.length,
                      itemBuilder: (BuildContext context, int index) {
                        var status = statusList[index];
                        var padding = EdgeInsets.symmetric(vertical: 8.0);
                        if (index == 0) padding = EdgeInsets.only(bottom: 8.0);

                        if (status["type"] == "Normal") {
                          return Padding(
                            padding: padding,
                            child: NormalCard(
                                name: status['name'],
                                location: status['location'],
                                userImg: status['userImg'],
                                statusText: status['statusText'],
                                coverImg: status['coverImg']),
                          );
                        } else {
                          return Padding(
                            padding: padding,
                            child: NotificationCard(),
                          );
                        }
                      },
                    )),
              )
            ],
          )),
    );
  }
}
