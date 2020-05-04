import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_3/components/app_conatiner.dart';
import 'package:task_3/components/card_item.dart';
import 'package:task_3/models/product_model.dart';

class Search extends StatelessWidget {
  List<ProductModel> productsList = [
    ProductModel(
        id: 1,
        imageURL: "assets/images/1.png",
        price: 10,
        name: "Pappaya",
        location: "Kerala",
        bgColor: Colors.orange[200]),
    ProductModel(
      id: 1,
      imageURL: "assets/images/2.png",
      price: 10,
      location: "Kerala",
      name: "Avocado",
      bgColor: Colors.green[200],
    ),
    ProductModel(
      id: 1,
      imageURL: "assets/images/2.png",
      price: 10,
      name: "Avocado",
      location: "Kerala",
      bgColor: Colors.green[200],
    ),
    ProductModel(
      id: 1,
      imageURL: "assets/images/2.png",
      price: 10,
      name: "Avocado",
      location: "Kerala",
      bgColor: Colors.green[200],
    )
  ];
  @override
  Widget build(BuildContext context) {
    var sideLeft = productsList.sublist(0, (productsList.length ~/ 2).toInt());
    var sideRight = productsList.sublist(
        (productsList.length ~/ 2).toInt(), productsList.length);
    return AppContainer(
        child: Expanded(
            child: Container(
                padding:
                    EdgeInsets.only(top: 51, bottom: 16, left: 16, right: 16),
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                              color: Colors.black12,
                              // border: Border(
                              //     top: BorderSide(
                              //         style: BorderStyle.solid,
                              //         color: Colors.grey,
                              //         width: 1))
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: TextField(
                                      // obscureText: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Search',
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.search,
                                    size: 25,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                                children: sideLeft
                                    .map((data) => CardItem(
                                          product: data,
                                        ))
                                    .toList()),
                            Column(
                                children: sideRight
                                    .map((data) => CardItem(
                                          product: data,
                                        ))
                                    .toList()),
                          ],
                        ),
                      )
                    ]))));
  }
}
