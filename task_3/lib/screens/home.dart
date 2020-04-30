import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_3/components/card_item.dart';
import 'package:task_3/models/product_model.dart';

class Home extends StatelessWidget {
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
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.fromLTRB(16, 51, 16, 16),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Shop",
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: ["All", "Electronics", "Fasion"]
                .map((data) => Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.black,
                                    style: data == "All"
                                        ? BorderStyle.solid
                                        : BorderStyle.none,
                                    width: 2))),
                        child: Text(
                          data,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  data == "All" ? Colors.black : Colors.grey),
                        ),
                      ),
                    ))
                .toList(),
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}
