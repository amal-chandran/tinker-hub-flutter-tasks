import 'package:flutter/material.dart';

class ProductModel {
  String name;
  double id;
  String imageURL;
  String location;
  String desc;
  double price;
  Color bgColor;

  ProductModel(
      {this.id,
      this.name,
      this.bgColor,
      this.location,
      this.desc = "",
      this.imageURL,
      this.price});
}
