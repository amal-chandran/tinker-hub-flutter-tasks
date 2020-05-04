import 'package:flutter/material.dart';
import 'package:task_3/screens/cart.dart';
import 'package:task_3/screens/home.dart';
import 'package:task_3/screens/product_details.dart';
import 'package:task_3/screens/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => Home(),
        "/search": (context) => Search(),
        "/product_details": (context) => ProductDetails(),
        "/cart": (context) => Cart(),
      },
    );
  }
}
