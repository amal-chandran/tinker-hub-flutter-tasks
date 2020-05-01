import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_3/models/product_model.dart';

class ProductDetails extends StatefulWidget {
  final ProductModel productData = ProductModel(
      id: 1,
      imageURL: "assets/images/1.png",
      price: 10,
      name: "Pappaya",
      location: "Kerala",
      desc:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      bgColor: Colors.orange[200]);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;

  handleAdd() {
    this.setState(() {
      this.quantity += 1;
    });
  }

  handleRemove() {
    if (this.quantity > 1)
      this.setState(() {
        this.quantity -= 1;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: widget.productData.bgColor),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 50,
                    child: IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Image.asset(
                    widget.productData.imageURL,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    EdgeInsets.only(top: 35, bottom: 20, left: 20, right: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.productData.name,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        widget.productData.location,
                        style: TextStyle(
                            color: Colors.green[400],
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        widget.productData.desc,
                        maxLines: 5,
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(28),
                                )
                                // topRight: Radius.circular(28)),
                                ),
                            // margin: EdgeInsets.only(left: -10),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  // padding: EdgeInsets.only(left: 0),
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    size: 30,
                                  ),
                                  onPressed: this.handleAdd,
                                ),
                                Text(
                                  this.quantity.toString(),
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.remove_circle_outline,
                                    size: 30,
                                  ),
                                  onPressed: this.handleRemove,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "\$" +
                                (this.quantity * widget.productData.price)
                                    .toString(),
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(right: 10),
                              padding: EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 16),
                              decoration: BoxDecoration(
                                  color: Colors.pink[300],
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  )
                                  // topRight: Radius.circular(28)),
                                  ),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                              )),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 14, horizontal: 16),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  )
                                  // topRight: Radius.circular(28)),
                                  ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.shopping_basket,
                                    size: 30,
                                    color: Colors.white70,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "Basket",
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
