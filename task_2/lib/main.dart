import 'package:flutter/material.dart';
import 'package:task_2/pages/timeline.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Timeline(),
    ));
  }
}
