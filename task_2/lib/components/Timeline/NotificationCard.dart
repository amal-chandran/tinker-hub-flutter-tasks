import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
// NotificationCard()
  final List<String> notificationImages = [
    "https://s3.amazonaws.com/uifaces/faces/twitter/amandabuzard/128.jpg",
    "https://s3.amazonaws.com/uifaces/faces/twitter/flashmurphy/128.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 8),
        height: 180,
        // decoration: BoxDecoration(color: Colors.black26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              // decoration: BoxDecoration(color: Colors.black26),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 15),
                    child: Icon(
                      Icons.notifications,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Contest:",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: Text(
                      "'Disconnected'",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 1.0),

                      // decoration: BoxDecoration(color: Colors.black26),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "1h",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(48, 15, 8, 8),
              child: Text(
                "Disconnected is an international contest sponcerd by Upsplash Price pool over 100K",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(43, 0, 8, 8),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(notificationImages[0]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(notificationImages[1]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4),
                    child: Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black26),
                        child: Text(
                          "+50",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "compataters",
                      style: TextStyle(
                          // fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
