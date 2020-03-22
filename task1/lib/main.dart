import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 1',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Task 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                      color: Colors.green,
                      child: Text('Add'),
                      onPressed: _incrementCounter),
                  Container(
                      padding: EdgeInsets.only(left: 10.1),
                      child: RaisedButton(
                          color: Colors.red,
                          child: Text('Subtract'),
                          onPressed: _decrementCounter))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ],
          ),
        ));
  }
}
