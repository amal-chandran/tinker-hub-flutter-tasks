import 'package:flutter/material.dart';
import 'package:task_2/pages/Timeline.dart';
import 'package:task_2/pages/Profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      // "/": (BuildContext context) => Timeline(),
      // "/profile": (BuildContext context) => Profile()
      "/": (BuildContext context) => Profile()
    });
  }
}
