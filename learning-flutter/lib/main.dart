import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    title: "myApp",
    home: Scaffold(
      appBar: AppBar(title: Text("Hello from AppBar")),
      body: Text("Hello from body"),
    ),
    theme: ThemeData(primarySwatch: Colors.red),
  );
  runApp(app);
}
