import 'package:chatt_app/homepage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(new Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "chat app",
      home: new homepage(),
    );
  }
}
