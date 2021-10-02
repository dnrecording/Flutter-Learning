import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mytac_cal/component/all.dart';
import 'package:mytac_cal/views/initial_tac_dose/demographic.dart';

class calPage extends StatefulWidget {
  const calPage({Key? key}) : super(key: key);

  @override
  _calPageState createState() => _calPageState();
}

int dropdownValue1 = 0;
int dropdownValue2 = 0;
int dropdownValue3 = 0;
double doseForm = 0;
int tacLevel = 0;

class _calPageState extends State<calPage> {
  final textControl = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    textControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Calculator")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Tacrolimus Pharmacokinetic Calculator"),
                OptionsDropdown(
                  onChanged: (int? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                      print(dropdownValue1);
                    });
                  },
                ),
                OptionsDropdown(
                  title: "Vd Model",
                  dropdownText: const <String>[
                    "Antignac",
                    "Golubovic",
                    "Bauer"
                  ],
                  onChanged: (int? newValue) {
                    setState(() {
                      dropdownValue2 = newValue!;
                    });
                  },
                ),
                OptionsDropdown(
                  title: "F model",
                  dropdownText: const <String>["Antignac", "Bauer"],
                  dropdownValues: const [0, 1],
                  onChanged: (int? newValue) {
                    setState(() {
                      dropdownValue3 = newValue!;
                    });
                  },
                ),
                TextField(
                  controller: textControl,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),

                //Checkbox// **use dose form

                ElevatedButton(
                    onPressed: () {
                      tacLevel = int.parse(textControl.text);
                      print(textControl.text);
                      if (tacLevel != 0) {
                        switch (dropdownValue1) {
                          case 0:
                            {
                              print("Antignac et al : " + textControl.text);
                            }
                            break;
                          case 1:
                            {
                              print("Golubovic et al : " + textControl.text);
                            }
                            break;
                          case 2:
                            {
                              print("Bauer et al : " + textControl.text);
                            }
                            break;
                          default:
                            {
                              print("not selected yet");
                            }
                            break;
                        }

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return demographPage();
                        }));
                      } else {
                        showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                                    title: const Text('Found invalid value'),
                                    content:
                                        const Text('TAC Level could not be 0'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'),
                                      )
                                    ]));
                      }
                    },
                    child: const Text("Submit"))
              ],
            ),
          ),
        ));
  }
}
