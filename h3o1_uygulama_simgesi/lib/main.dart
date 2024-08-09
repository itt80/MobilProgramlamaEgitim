import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      home: const Icon(
        Icons.camera_enhance,
        color: Colors.red,
        size: 128,
        semanticLabel: 'Hesap ikonu',
      ),
    
    );
  }
}


// Simge türleri
/* outlined, rounded, sharp */



