import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 9),
        height: 140,
        // decoration: BoxDecoration(color: Colors.black26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              // decoration: BoxDecoration(color: Colors.black26),
              child: Row(
                children: <Widget>[
                  Text(
                    "Replied in ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: Text(
                      "Spirit of Alaska",
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
                        "2h",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Icon(
                      Icons.location_on,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Irelend",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                "Disconnected is an international contest sponcerd by Upsplash Price pool over 100K",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
