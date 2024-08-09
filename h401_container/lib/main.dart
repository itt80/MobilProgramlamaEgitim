import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

var body1 = Container(
      //width: double.infinity, //200.0, // Set a desired width
      //height: 200.0, // Set a desired height
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.lightBlue,
          border: Border.all(
            color: Colors.black,
            width: 10,
          ),
          borderRadius: BorderRadius.circular(10)
      ),

      child: const Icon(
        Icons.ac_unit,
        color: Colors.white,
        size: 250,
      ),
);

var body2 = Row(
  mainAxisAlignment: MainAxisAlignment.start,
  
  children: [
    Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.lightBlue,
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)
      ),

      child: const Icon(
        Icons.ac_unit,
        color: Colors.white,
        size: 200,
      ),
    ),

    Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.lightGreen,
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)
      ),

      child: const Icon(
        Icons.ac_unit,
        color: Colors.white,
        size: 200,
      ),
    ),

    Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10)
      ),

      child: const Icon(
        Icons.ac_unit,
        color: Colors.white,
        size: 200,
      ),
    )
  ],
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          
          appBar: AppBar(
            title: const Text("Container Örnek"),
          ),
          
          body: body2,
          backgroundColor: Colors.amber[50],
        )
    );
  }
}
