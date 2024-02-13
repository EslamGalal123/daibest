// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image/image.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:tflite_flutter/tflite_flutter.dart';
// import 'package:image/image.dart' as img;
// import 'dart:math';

// class MyModelScreen extends StatefulWidget {
//   @override
//   _MyModelScreenState createState() => _MyModelScreenState();
// }



// class _MyModelScreenState extends State<MyModelScreen> {
//   Interpreter? _interpreter;
//   late List<String> _labels;
//   late ImagePicker _imagePicker;
//   late ImageProvider _imageProvider;
//   bool _isLoading = false;
//   String _prediction = '';

//   @override
//   void initState() {
//     super.initState();
//     _loadModel();
//     _imagePicker = ImagePicker();
//   }

//   Future<void> _loadModel() async {
//     try {
//       _interpreter = await Interpreter.fromAsset('model.tflite');
//       _labels = await File('labels.txt').readAsLines();
//     } catch (e) {
//       print('Failed to load model: $e');
//     }
//   }

//   Future<void> _predictImage() async {
//     setState(() {
//       _isLoading = true;
//       _prediction = '';
//     });

//     final imageFile = await _imagePicker.pickImage(source: ImageSource.gallery);

//     if (imageFile != null) {
//       final file = File(imageFile.path);
//       final image = decodeImage(await file.readAsBytes());
//       final resizedImage = copyResize(image!, width: 224, height: 224);
//       final input = _preProcessImage(resizedImage);

//       final output = List.filled(_labels.length, 0.0);
//       _interpreter?.run(input, output);

//       final predictionIndex = output.indexWhere((score) => score == output.reduce(max));
//       final prediction = _labels[predictionIndex];

//       setState(() {
//         _isLoading = false;
//         _prediction = prediction;
//         _imageProvider = FileImage(file);
//       });
//     } else {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   List<List<List<double>>> _preProcessImage(img.Image image) {
//   final input = List.generate(1, (_) => List.generate(224, (_) => List.filled(224, 0.0)));

//   for (var y = 0; y < 224; y++) {
//     for (var x = 0; x < 224; x++) {
//       final pixel = image.getPixel(x, y);
//       final r = img.getRed(pixel);
//       final g = img.getGreen(pixel);
//       final b = img.getBlue(pixel);
//       input[0][y][x] = (r + g + b) / 3.0 / 127.5 - 1.0;
//     }
//   }

//   return input;
// }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My Model Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: _predictImage,
//               child: Text('Select Image'),
//             ),
//             SizedBox(height: 16),
//             if (_isLoading)
//               CircularProgressIndicator()
//             else if (_prediction.isNotEmpty)
//               Text(
//                 'Prediction: $_prediction',
//                 style: TextStyle(fontSize: 24),
//               )
//             else
//               Text(
//                 'No image selected',
//                 style: TextStyle(fontSize: 24),
//               ),
//             SizedBox(height: 16),
//             if (_imageProvider != null)
//               Container(
//                 width: 200,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: _imageProvider,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// // import 'package:flutter/material.dart';

// // class CheckboxWithFields extends StatefulWidget {
// //   @override
// //   _CheckboxWithFieldsState createState() => _CheckboxWithFieldsState();
// // }

// // class _CheckboxWithFieldsState extends State<CheckboxWithFields> {
// //   bool isChecked = false;
// //   bool showFields = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Checkbox with Fields'),
// //       ),
// //       body: ListView(
// //         children: [
// //           CheckboxListTile(
// //             title: Text('Checkbox'),
// //             value: isChecked,
// //             onChanged: (bool? value) {
// //               setState(() {
// //                 isChecked = value ?? false;
// //               });
// //               if (isChecked) {
// //                 setState(() {
// //                   showFields = true;
// //                 });
// //               } else {
// //                 setState(() {
// //                   showFields = false;
// //                 });
// //               }
// //             },
// //             controlAffinity: ListTileControlAffinity.leading,
// //           ),
// //           if (showFields) ...[
// //             TextFormField(
// //               decoration: InputDecoration(
// //                 labelText: 'Field 1',
// //               ),
// //             ),
// //             TextFormField(
// //               decoration: InputDecoration(
// //                 labelText: 'Field 2',
// //               ),
// //             ),
// //           ],
// //         ],
// //       ),
// //     );
// //   }
// // }

// // void main() {
// //   runApp(MaterialApp(
// //     home: CheckboxWithFields(),
// //   ));
// // }
// // class _CheckboxWithFieldsState extends State<CheckboxWithFields> {
// //   bool isChecked1 = false;
// //   bool isChecked2 = false;
// //   bool showField1 = false;
// //   bool showField2 = false;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Checkbox with Fields'),
// //       ),
// //       body: ListView(
// //         children: [
// //           CheckboxListTile(
// //             title: Text('Checkbox 1'),
// //             value: isChecked1,
// //             onChanged: (bool? value) {
// //               setState(() {
// //                 isChecked1 = value ?? false;
// //                 if (isChecked1) {
// //                   showField1 = true;
// //                   showField2 = false;
// //                 } else {
// //                   showField1 = false;
// //                 }
// //               });
// //             },
// //             controlAffinity: ListTileControlAffinity.leading,
// //           ),
// //           CheckboxListTile(
// //             title: Text('Checkbox 2'),
// //             value: isChecked2,
// //             onChanged: (bool? value) {
// //               setState(() {
// //                 isChecked2 = value ?? false;
// //                 if (isChecked2) {
// //                   showField1 = false;
// //                   showField2 = true;
// //                 } else {
// //                   showField2 = false;
// //                 }
// //               });
// //             },
// //             controlAffinity: ListTileControlAffinity.leading,
// //           ),
// //           if (showField1) ...[
// //             TextFormField(
// //               decoration: InputDecoration(
// //                 labelText: 'Field 1',
// //               ),
// //             ),
// //           ],
// //           if (showField2) ...[
// //             TextFormField(
// //               decoration: InputDecoration(
// //                 labelText: 'Field 2',
// //               ),
// //             ),
// //           ],
// //         ],
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:tflite_flutter/tflite_flutter.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   Interpreter? interpreter;

// //   @override
// //   void initState() {
// //     super.initState();
// //     loadModel();
// //   }

// //   void loadModel() async {
// //     try {
// //       interpreter = await Interpreter.fromAsset('model.tflite');
// //       interpreter?.allocateTensors();
// //     } catch (e) {
// //       print('Error loading model: $e');
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     interpreter?.close();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('TFLite Example'),
// //       ),
// //       body: Center(
// //         child: Text('TFLite Model Loaded'),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';
// // import 'package:tflite_flutter/tflite_flutter.dart';

// // class MyModelScreen extends StatefulWidget {
// //   @override
// //   _MyModelScreenState createState() => _MyModelScreenState();
// // }

// // class _MyModelScreenState extends State<MyModelScreen> {
// //   Interpreter? _interpreter;

// //   @override
// //   void initState() {
// //     super.initState();
// //     loadModel();
// //   }

// //   Future<void> loadModel() async {
// //     try {
// //       _interpreter = await Interpreter.fromAsset('model.tflite');
// //     } catch (e) {
// //       print('Failed to load model: $e');
// //     }
// //   }

// //   // Function to run inference with the loaded model
// //   void runInference() {
// //     // Perform inference using the loaded model
// //     // ...
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('My Model Screen'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             ElevatedButton(
// //               onPressed: runInference,
// //               child: Text('Run Inference'),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

