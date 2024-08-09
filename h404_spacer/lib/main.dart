import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spacer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[300],
          
          flexibleSpace: const Row(
            children: [
              FlutterLogo(
                size: 50,
              ),
              Spacer(),
              Text(
                "Uygulama 1"
              ),

              Spacer(),

              Icon(
                Icons.menu,
                color: Colors.white,
                size: 55,
              )
            ],
          ),
        ),
      )
    );
  }
}



