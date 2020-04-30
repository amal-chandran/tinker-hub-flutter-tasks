import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_3/models/product_model.dart';

class CardItem extends StatelessWidget {
  final ProductModel product;

  CardItem({this.product});
  var length = 580;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
        // width: double.infinity,
        // flex: 1,
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Stack(
        children: <Widget>[
          Container(
            width: length * 0.319,
            // height: length * 0.404,
            decoration: BoxDecoration(
                color: product.bgColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    product.imageURL,
                    height: length * .276,
                    width: double.infinity,
                  ),

                  // Image.network(
                  //   this.imageURL,
                  //   height: 130,
                  //   width: double.infinity,
                  // ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            product.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: length * 0.031),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              product.location,
                              style: TextStyle(
                                fontSize: (length * 0.022).toDouble(),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          "\$" + product.price.toString(),
                          style: TextStyle(
                            fontSize: length * 0.026,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.add,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
