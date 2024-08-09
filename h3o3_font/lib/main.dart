import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Fonts Paketi Kullanımı',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Google Fonts Paketi Kullanımı"),
        ),
        body: Center(
            child: GestureDetector(

              onTap: () {
                print("tıklandı");
              },
          
          child: Text(
            "Mugla Deneyap",
            style: GoogleFonts.monoton(
              fontSize: 30,
              fontWeight: FontWeight.w300,
            ),
          ),
        )),
      ),
    );
  }
}


/* 


            
            
            
            


            
             */