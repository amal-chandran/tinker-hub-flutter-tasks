import 'package:flutter/material.dart';
import 'package:task_2/components/NormalCard.dart';
import 'package:task_2/components/NotificationCard.dart';

class Timeline extends StatelessWidget {
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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.black12),
        padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
        // padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  transform: Matrix4.translationValues(-14, 0, 0),
                  child: IconButton(
                    color: Colors.grey,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                ),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset.fromDirection(90, 2))
                  ], shape: BoxShape.circle, color: Colors.black26),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/user_image.png'),
                  ),
                ),
              ],
            ),
            Container(
              // decoration: BoxDecoration(color: Colors.black26),
              padding: EdgeInsets.only(left: 40, top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Hello $name!",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Today",
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  // decoration: BoxDecoration(color: Colors.black26),
                  padding: EdgeInsets.only(left: 40, top: 0),
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 0),
                    itemCount: statusList.length,
                    itemBuilder: (BuildContext context, int index) {
                      var status = statusList[index];
                      if (status["type"] == "Normal") {
                        return NormalCard(
                            name: status['name'],
                            location: status['location'],
                            userImg: status['userImg'],
                            statusText: status['statusText'],
                            coverImg: status['coverImg']);
                      } else {
                        return NotificationCard();
                      }
                    },
                  )),
            )
          ],
        ));
  }
}
