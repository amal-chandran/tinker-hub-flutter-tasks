import 'package:flutter/material.dart';
import 'package:task_3/screens/home.dart';
import 'package:task_3/screens/product_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Container(
              child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ProductDetails(),
                        // Home(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            color: Colors.black12,
                            // border: Border(
                            //     top: BorderSide(
                            //         style: BorderStyle.solid,
                            //         color: Colors.grey,
                            //         width: 1))
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                {"name": "Home", "icon": Icons.home},
                                {"name": "Cart", "icon": Icons.shopping_cart},
                                {"name": "Search", "icon": Icons.search},
                                {
                                  "name": "Account",
                                  "icon": Icons.account_circle
                                },
                              ]
                                  .map(
                                    (menuItems) => Container(
                                      padding: EdgeInsets.all(8),
                                      child: IconButton(
                                        color: Colors.black54,
                                        icon: Icon(
                                          menuItems["icon"],
                                          size: 22,
                                        ),
                                        // iconSize: 24,
                                        onPressed: () => {},
                                      ),
                                    ),
                                  )
                                  .toList()),
                        )
                      ])))),
    );
  }
}
