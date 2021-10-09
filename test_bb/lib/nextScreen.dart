import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:test_bb/nextScreen2.dart';

class nextScreen extends StatefulWidget {
  const nextScreen({Key? key}) : super(key: key);

  @override
  _nextScreenState createState() => _nextScreenState();
}

class _nextScreenState extends State<nextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("appBar")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () {
                  pushNewScreenWithRouteSettings(
                    context,
                    settings: RouteSettings(name: '/next'),
                    screen: nextScreen2(),
                    pageTransitionAnimation:
                        PageTransitionAnimation.scaleRotate,
                  );
                },
                child: Text(
                  "Go to Second Screen ->",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
    );
  }
}
