import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resim Bileşeni'),
        ),
        body: Image.network(
            'https://image.dha.com.tr/i/dha/75/0x410/61eff10b45d2a07724ee67eb.jpg'),
      ),
    );
  }
}
