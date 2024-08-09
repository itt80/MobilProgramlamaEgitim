import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Expanded',       
      home: Column(
        children: [
            Kutu(color: Colors.lightBlue),
            Expanded(
              child:Kutu(
                color: Colors.lightGreen
              )
            ),
            Expanded(child:Kutu(color: Colors.orange)),
            Expanded(child:Kutu(color: Colors.blue)),
        ],
      )
    );
  }
}

class Kutu extends StatelessWidget {
  final Color color;

  const Kutu({super.key, required this.color});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(),
      ),
    );
  }
}