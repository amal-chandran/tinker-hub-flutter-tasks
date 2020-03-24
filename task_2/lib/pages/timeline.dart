import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  String name = "Amal";
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.black12),
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: BackButtonIcon(),
                  onPressed: () {},
                ),
                Text("user icon"),
              ],
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black26),
              padding: EdgeInsets.only(left: 1),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text("Hello $name!",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
