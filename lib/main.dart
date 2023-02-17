import 'package:flutter/material.dart';

//https://github.com/LapertJoseph/FlutterApp
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override // good practice to override return type here
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello!'),
    );
  }
}
