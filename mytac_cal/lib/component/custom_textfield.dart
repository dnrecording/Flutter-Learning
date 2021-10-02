import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  // attribute
  final List<String> dropdownText;
  final String title;
  final List<int> dropdownValues;
  final void Function(double?)? onChanged;
  final String suffix;
  final TextInputType type;

  const CustomTextField(
      {Key? key,
      this.title = 'Clearance Model',
      this.dropdownText = const <String>[
        'Antignac et al',
        'Golubovic et al',
        'Bauer et al'
      ],
      this.dropdownValues = const <int>[0, 1, 2],
      this.onChanged,
      this.suffix = '',
      this.type = TextInputType.text})
      : super(key: key);

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
                width: 200,
                child: TextFormField(
                  obscureText: false,
                  keyboardType: type,
                  decoration: InputDecoration(
                    suffix: Text(suffix),
                    hintText: '0',
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
