import 'package:flutter/material.dart';
import 'resim_kutusu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    return const Row(children: [
      ResimKutusu(
          yol: "assets/resimler/armut.jpg",
          renk: Colors.purple,
          renk2: Colors.purpleAccent,
          isim: "Armut"),
      ResimKutusu(
          yol: "assets/resimler/erik.jpg",
          renk: Colors.red,
          renk2: Colors.white,
          isim: "Erik"),
      ResimKutusu(
          yol: "assets/resimler/karpuz.jpg",
          renk: Colors.red,
          renk2: Colors.yellow,
          isim: "Karpuz"),
      ResimKutusu(
          yol: "assets/resimler/kavun.jpg",
          renk: Colors.yellow,
          renk2: Colors.blue,
          isim: "Kavun"),
      ResimKutusu(
          yol: "assets/resimler/limon.jpg",
          renk: Colors.purple,
          renk2: Colors.purpleAccent,
          isim: "Limon"),
     
    ]);
  }
}
