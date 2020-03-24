import 'package:flutter/material.dart';
import 'package:task_2/components/Profile/RepliedCard.dart';
import 'package:task_2/components/Timeline/NormalCard.dart';
import 'package:task_2/components/Timeline/NotificationCard.dart';

class Profile extends StatelessWidget {
  final String name = "Amal Chandran";
  final String location = "Lendon";
  final String desc =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since ";

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
      "name": "Sincere Macejkovic",
      "userImg":
          "https://s3.amazonaws.com/uifaces/faces/twitter/nicollerich/128.jpg",
      "coverImg":
          "https://images.unsplash.com/photo-1584743241753-a727f5d13ff4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "location": "Landon",
      "statusText": "A loving memory :)",
      "type": "Normal"
    }
  ];

  List accountData = [
    {"title": "Photo", "value": "255"},
    {"title": "Followers", "value": "425"},
    {"title": "Follows", "value": "355"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.black12),
          padding: EdgeInsets.fromLTRB(40, 60, 20, 0),
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
                padding: EdgeInsets.only(left: 20, top: 10.0, bottom: 5),
                child: Row(
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
                        radius: 30,
                        backgroundImage: AssetImage('assets/profile.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("$name",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Container(
                            width: 150,
                            padding: const EdgeInsets.only(
                                top: 5.0, bottom: 5, left: 2),
                            child: Text(desc,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 4, left: 2),
                                  child: Icon(
                                    Icons.location_on,
                                    size: 11,
                                    color: Colors.black45,
                                  ),
                                ),
                                Text(
                                  location,
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // decoration: BoxDecoration(color: Colors.black26),
                padding:
                    EdgeInsets.only(left: 30, top: 20.0, bottom: 20, right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: accountData.map((data) {
                    return Column(
                      children: <Widget>[
                        Text(
                          data["title"],
                          style: TextStyle(color: Colors.black45, fontSize: 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            data["value"],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
              Container(
                  // decoration: BoxDecoration(color: Colors.black26),
                  padding: EdgeInsets.only(left: 17, top: 0),
                  // height: 500,
                  // width: 700,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Activity",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4),
                        child: Container(
                            width: 20,
                            height: 20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black26),
                            child: Text(
                              "+2",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ),

//Dots
                      Row(
                        children: [1, 2, 3]
                            .map(
                              (data) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Container(
                                  width: 7,
                                  height: 7,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: data == 1
                                          ? Colors.pink
                                          : Colors.black26),
                                ),
                              ),
                            )
                            .toList(),
                      )
                    ],
                  )),
              Container(
                  // decoration: BoxDecoration(color: Colors.black26),
                  padding: EdgeInsets.only(left: 17, top: 10),
                  // height: 500,
                  // width: 700,
                  child: Column(
                    children: <Widget>[
                      RepliedCard(),
                    ],
                  )),
            ],
          )),
    );
  }
}
