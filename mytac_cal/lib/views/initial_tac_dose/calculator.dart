import 'package:flutter/material.dart';
import 'package:mytac_cal/component/all.dart';

class calPage extends StatefulWidget {
  const calPage({Key? key}) : super(key: key);

  @override
  _calPageState createState() => _calPageState();
}

int dropdownValue1 = 0;
int dropdownValue2 = 0;
int dropdownValue3 = 0;

class _calPageState extends State<calPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Calculator")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Tacrolimus Pharmacokinetic Calculator"),
                OptionsDropdown(
                  onChanged: (int? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  },
                ),
                OptionsDropdown(
                  onChanged: (int? newValue) {
                    setState(() {
                      dropdownValue2 = newValue!;
                    });
                  },
                ),
                OptionsDropdown(
                  onChanged: (int? newValue) {
                    setState(() {
                      dropdownValue3 = newValue!;
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
