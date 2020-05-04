import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppContainer extends StatelessWidget {
  Widget child;
  AppContainer({this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  this.child,
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
                          {
                            "name": "Home",
                            "icon": Icons.home,
                            "onPress": () => Navigator.pushNamed(context, "/")
                          },
                          {
                            "name": "Cart",
                            "icon": Icons.shopping_cart,
                            "onPress": () =>
                                Navigator.pushNamed(context, "/cart")
                          },
                          {
                            "name": "Search",
                            "icon": Icons.search,
                            "onPress": () =>
                                Navigator.pushNamed(context, "/search")
                          },
                          {
                            "name": "Account",
                            "icon": Icons.account_circle,
                            "onPress": () =>
                                Navigator.pushNamed(context, "/account")
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
                                  onPressed: menuItems["onPress"],
                                ),
                              ),
                            )
                            .toList()),
                  )
                ])));
  }
}
