import 'package:flutter/material.dart';

class NormalCard extends StatelessWidget {
  final String name;
  final String location;
  final String statusText;
  final String userImg;
  final String coverImg;

  NormalCard(
      {this.name, this.location, this.userImg, this.coverImg, this.statusText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: 184,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            )),
        Container(
            height: 188,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(4)),
            )),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(coverImg))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 8, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(userImg),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Icon(
                                    Icons.location_on,
                                    size: 11,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  location,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          // decoration: BoxDecoration(color: Colors.black26),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.image),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 46),
                    child: Text(
                      statusText,
                      style: TextStyle(
                          color: Colors.white54, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
