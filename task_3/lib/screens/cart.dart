import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_3/components/app_conatiner.dart';
import 'package:task_3/components/round_icon_btn.dart';
import 'package:task_3/models/product_model.dart';

class Cart extends StatelessWidget {
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
    return AppContainer(
      child: Expanded(
          child: Container(
        padding: EdgeInsets.only(top: 51, bottom: 16, left: 16, right: 16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Cart",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: productsList
                      .map((product) => Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: product.bgColor,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  child: Image.asset(
                                    product.imageURL,
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      product.name,
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            "\$" + product.price.toString(),
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                          Icon(
                                            Icons.close,
                                            size: 15,
                                          ),
                                          Text(
                                            "10",
                                            // style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.remove_circle_outline,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Total:",
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "\$" +
                            productsList
                                .fold(0, (val, ele) => val + ele.price)
                                .toString(),
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: RoundIconBtn(
                    btnColor: Colors.green,
                    btnIcon: Icons.shopping_basket,
                    btnLabel: "Checkout",
                    onPress: () => {},
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
