import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// widget สร้างเองแบบ Stateless
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myApp",
      home: Scaffold(
        appBar: AppBar(title: Text("Hello from AppBar")),
        body: Center(child: Text("Hello from body")),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
