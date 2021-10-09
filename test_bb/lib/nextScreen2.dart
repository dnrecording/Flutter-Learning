import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class nextScreen2 extends StatefulWidget {
  const nextScreen2({Key? key}) : super(key: key);

  @override
  _nextScreen2State createState() => _nextScreen2State();
}

class _nextScreen2State extends State<nextScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bar"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(child: const Text("nextScreen2")),
          ]),
    );
  }
}
