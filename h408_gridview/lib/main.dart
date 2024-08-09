import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(

          title: const Text('Grid View Örneği'),
        ),
        
        body: GridView.count(
          crossAxisCount: 3, // Her satırda 3 öğe olacak
          
          children: List.generate(20, (index) {
            
            return Container(
              color: Colors.amber[index * 100],
              child: Center(
                child: Text('Item $index'),
              ),
            );
            
          }),
        ),
      ),
    );
  }
}