import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Row(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: FlutterLogo(),
          ),
          FlutterLogo(),
          SizedBox(
            width: 200,
            height: 100,
          ),
          FlutterLogo()
        ],
      )
    );
  }
}

