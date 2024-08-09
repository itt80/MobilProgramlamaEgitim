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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Kompozit Bileşenler"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ResimKutusu(yol: "assets/resimler/armut.jpg", renk: Colors.purple, renk2: Colors.purpleAccent),
        ResimKutusu(yol: "assets/resimler/erik.jpg", renk: Colors.purple, renk2: Colors.purpleAccent),
        ResimKutusu(yol: "assets/resimler/karpuz.jpg", renk: Colors.purple, renk2: Colors.purpleAccent),
        ResimKutusu(yol: "assets/resimler/kavun.jpg", renk: Colors.purple, renk2: Colors.purpleAccent),
        ResimKutusu(yol: "assets/resimler/limon.jpg", renk: Colors.purple, renk2: Colors.purpleAccent),
      ]
    );
  }
}

class ResimKutusu extends StatelessWidget {
  final String yol;
  final Color renk;
  final Color renk2;

  const ResimKutusu({super.key, required this.yol, required this.renk, required this.renk2});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,

      padding: const EdgeInsets.all(15),

      margin: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [renk, renk2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),

      child: Image.asset(yol),
    );
  }
}
