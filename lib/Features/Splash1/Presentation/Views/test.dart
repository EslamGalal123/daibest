import 'package:flutter/material.dart';

class CheckboxWithFields extends StatefulWidget {
  @override
  _CheckboxWithFieldsState createState() => _CheckboxWithFieldsState();
}

// class _CheckboxWithFieldsState extends State<CheckboxWithFields> {
//   bool isChecked = false;
//   bool showFields = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Checkbox with Fields'),
//       ),
//       body: ListView(
//         children: [
//           CheckboxListTile(
//             title: Text('Checkbox'),
//             value: isChecked,
//             onChanged: (bool? value) {
//               setState(() {
//                 isChecked = value ?? false;
//               });
//               if (isChecked) {
//                 setState(() {
//                   showFields = true;
//                 });
//               } else {
//                 setState(() {
//                   showFields = false;
//                 });
//               }
//             },
//             controlAffinity: ListTileControlAffinity.leading,
//           ),
//           if (showFields) ...[
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Field 1',
//               ),
//             ),
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Field 2',
//               ),
//             ),
//           ],
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: CheckboxWithFields(),
//   ));
// }
class _CheckboxWithFieldsState extends State<CheckboxWithFields> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool showField1 = false;
  bool showField2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox with Fields'),
      ),
      body: ListView(
        children: [
          CheckboxListTile(
            title: Text('Checkbox 1'),
            value: isChecked1,
            onChanged: (bool? value) {
              setState(() {
                isChecked1 = value ?? false;
                if (isChecked1) {
                  showField1 = true;
                  showField2 = false;
                } else {
                  showField1 = false;
                }
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          CheckboxListTile(
            title: Text('Checkbox 2'),
            value: isChecked2,
            onChanged: (bool? value) {
              setState(() {
                isChecked2 = value ?? false;
                if (isChecked2) {
                  showField1 = false;
                  showField2 = true;
                } else {
                  showField2 = false;
                }
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          if (showField1) ...[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Field 1',
              ),
            ),
          ],
          if (showField2) ...[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Field 2',
              ),
            ),
          ],
        ],
      ),
    );
  }
}
