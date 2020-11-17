import 'package:chatt_app/chatscreen.dart';
import 'package:flutter/material.dart';
class homepage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

        return new Scaffold(
          appBar: new AppBar(
            title: new Text("fezzy chatt"),
          ),
          body: new chatscreen(),
        );

  }
}
