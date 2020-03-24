import 'package:flutter/material.dart';
import 'package:task_2/components/NormalCard.dart';

class Timeline extends StatelessWidget {
  final String name = "Amal Chandran";

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.black12),
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
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
                  NormalCard(),
                  NormalCard(),
                ],
              ),
            )
          ],
        ));
  }
}
