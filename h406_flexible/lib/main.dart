import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Kutu(),
          Flexible(child: Kutu(), flex: 1, fit: FlexFit.loose),
          Flexible(child: Kutu(), flex: 2, fit: FlexFit.loose),
          Flexible(child: Kutu(), flex: 2, fit: FlexFit.tight),
        ],
      ),
    );
  }
}




class Kutu extends StatelessWidget {
  const Kutu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(),
      )
    );
  }
}