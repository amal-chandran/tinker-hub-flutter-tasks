import 'package:flutter/material.dart';

class ProductModel {
  String name;
  double id;
  String imageURL;
  String location;
  double price;
  Color bgColor;

  ProductModel(
      {this.id,
      this.name,
      this.bgColor,
      this.location,
      this.imageURL,
      this.price});
}
