import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mytac_cal/component/all.dart';
import 'calculator.dart' as calculator;

class demographPage extends StatefulWidget {
  const demographPage({Key? key}) : super(key: key);

  @override
  _demographPageState createState() => _demographPageState();
}

double Antignac(double pod, double pred) {
  var pp = pow(pod, 2.54);
  var podCal = 1 + (pp) / (pp + pow(3.81, 2.54));
  double res = 1.81 * podCal * pred;

  if (res.isNaN) res = 0;
  return res;
}

double Golubovic(double pod, double wt, double tp, double ast, double hct) {
  double res = 0;
  var _pod = 10.017 * pow(pod / 47, -0.0283);
  var _wt = pow(wt / 68, 0.869);
  var _tp = pow(tp / 63, 0.161) * (1 - 0.0861);
  var _ast = (ast - 15);
  var _hct = (1 - 0.831) * (hct - 0.31);

  res = _pod * _wt * _tp * _ast * _hct;
  if (res.isNaN) res = 0;
  return res;
}

double Bauer(double wt) {
  double res = 0;
  var _wt = 0.06 * wt;

  res = _wt;
  if (res.isNaN) res = 0;
  return res;
}

int formula = calculator.dropdownValue1;
double weight = 0;
double pod = 0;
double protein = 0;
double ast = 0;
double hct = 0;
bool predBool = true;
double pred = 0;

class _demographPageState extends State<demographPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: <Widget>[
                const Text("Patients Demographic"),
                CustomTextField(
                  title: "Weight",
                  suffix: "kg",
                  type: TextInputType.number,
                  onChanged: (double? newValue) {
                    setState(() {
                      weight = newValue!;
                    });
                  },
                ),
                CustomTextField(
                  title: "Post Operative Day (POD)",
                  suffix: "day",
                  type: TextInputType.number,
                  onChanged: (double? newValue) {
                    setState(() {
                      pod = newValue!;
                    });
                  },
                ),
                CustomTextField(
                  title: "Total Protein",
                  suffix: "g/L",
                  type: TextInputType.number,
                  onChanged: (double? newValue) {
                    setState(() {
                      protein = newValue!;
                    });
                  },
                ),
                CustomTextField(
                  title: "AST",
                  suffix: "IU/L",
                  type: TextInputType.number,
                  onChanged: (double? newValue) {
                    setState(() {
                      ast = newValue!;
                    });
                  },
                ),
                CustomTextField(
                  title: "HCT",
                  type: TextInputType.number,
                  onChanged: (double? newValue) {
                    setState(() {
                      hct = newValue!;
                    });
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      switch (calculator.dropdownValue1) {
                        case 0:
                          {
                            print("Antignac et al");
                          }
                          break;
                        case 1:
                          {
                            print("Golubovic et al");
                          }
                          break;
                        case 2:
                          {
                            print("Bauer et al");
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
                    },
                    child: const Text("Submit"))
              ],
            ),
          ),
        ));
  }
}
