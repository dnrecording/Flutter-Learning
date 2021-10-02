import 'package:flutter/material.dart';

class OptionsDropdown extends StatelessWidget {
  // attribute
  final List<String> dropdownText;
  final String title;
  final List<int> dropdownValues;
  final void Function(int?)? onChanged;

  const OptionsDropdown({
    Key? key,
    this.title = 'Clearance Model',
    this.dropdownText = const <String>[
      'Antignac et al',
      'Golubovic et al',
      'Bauer et al'
    ],
    this.dropdownValues = const <int>[0, 1, 2],
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int dropdownValue = 0;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.deepPurple),
            ),
          ),
          SizedBox.fromSize(size: const Size(10, 10)),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                child: DropdownButtonFormField<int>(
                  value: dropdownValue,
                  isExpanded: true,
                  icon: const Icon(Icons.expand_more_rounded),
                  iconSize: 24,
                  iconEnabledColor: Colors.deepPurpleAccent,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  // underline: Container(
                  //   height: 2,
                  //   color: Colors.deepPurpleAccent,
                  // ),
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                  onChanged: (int? newValue) {
                    // dropdownValue = newValue!;
                      onChanged!(newValue);
                  },
                  items: dropdownValues.map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(dropdownText[value]),
                    );
                  }).toList(),
                ),
              )),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: FloatingActionButton(onPressed: () {
          //     print(dropdownValue);
          //   }),
          // )
        ],
      ),
    );
  }
}