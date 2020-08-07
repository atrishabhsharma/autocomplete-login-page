import 'package:flutter/material.dart';
import 'package:gradz/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'gradz',
      home: Page1(),
    );
  }
}
