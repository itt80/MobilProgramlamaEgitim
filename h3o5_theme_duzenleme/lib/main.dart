import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return 
    
    MaterialApp(
      title: "Tema Kullanımı",
      
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.greenAccent,
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.lato(
            fontSize: 60,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fluter Temaları"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          'Merhaba!',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
