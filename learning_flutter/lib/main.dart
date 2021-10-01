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
      title: "App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

int number = 0; //set state

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Number Counter",
        style: TextStyle(color: Colors.amber[300]),
      )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counting", style: TextStyle(color: Colors.amber[900])),
          Text("$number", style: TextStyle(fontSize: 36))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Text("press"),
      ),
    );
  }
}
