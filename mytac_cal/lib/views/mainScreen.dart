import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytac_cal/views/initial_tac_dose/calculator.dart';
import 'package:mytac_cal/views/adjust/adjustment.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
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
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return calPage();
                      }));
                    },
                    child: const Text("Initial Dose")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return adjustPage();
                      }));
                    },
                    child: const Text("Adjustment Dose"))
              ],
            ),
          ),
        ));
  }
}

// Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height * 1,
//           decoration: BoxDecoration(
//             color: Colors.white,
//           ),
//           child: Align(
//             alignment: AlignmentDirectional(-1, -1),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Align(
//                   alignment: AlignmentDirectional(0, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(50, 25, 50, 0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           'assets/images/Group_1.png',
//                           width: 80,
//                           height: 80,
//                           fit: BoxFit.cover,
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
//                           child: Text('Welcome to'),
//                         ),
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
//                           child: Text(
//                             'Tacrolimus\nCalculator App',
//                             textAlign: TextAlign.start,
//                           ),
//                         ),
//                         Text(
//                             'Calculates and Adjusts Tacrolimus Pharmacokinetic in one place.')
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 85, 0, 0),
//                   child: InkWell(
//                     onTap: () async {
//                       // await Navigator.push(
//                       //   context,
//                       //   PageTransition(
//                       //     type: PageTransitionType.leftToRight,
//                       //     duration: Duration(milliseconds: 500),
//                       //     reverseDuration: Duration(milliseconds: 500),
//                       //     child: InitialDoseWidget(),
//                       //   ),
//                       // );
//                     },
//                     child: Container(
//                       width: MediaQuery.of(context).size.width * 0.8,
//                       height: 140,
//                       decoration: BoxDecoration(
//                         color: Color(0xFF2431B4),
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(0),
//                           bottomRight: Radius.circular(70),
//                           topLeft: Radius.circular(0),
//                           topRight: Radius.circular(70),
//                         ),
//                       ),
//                       child: Align(
//                         alignment: AlignmentDirectional(0, 0),
//                         child:
//                             Text('Initial Dose', textAlign: TextAlign.center),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: AlignmentDirectional(1, 0),
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                     child: Container(
//                       width: MediaQuery.of(context).size.width * 0.9,
//                       height: 140,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFFF5FA4),
//                         borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(70),
//                           bottomRight: Radius.circular(0),
//                           topLeft: Radius.circular(70),
//                           topRight: Radius.circular(0),
//                         ),
//                       ),
//                       child: Align(
//                         alignment: AlignmentDirectional(0.25, 0),
//                         child: Text('Dose Adjustment',
//                             textAlign: TextAlign.center),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );