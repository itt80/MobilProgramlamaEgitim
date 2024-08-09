import 'package:flutter/material.dart';

class ResimKutusu extends StatelessWidget {
  final String yol;
  final Color renk;
  final Color renk2;
  final String isim;

  const ResimKutusu(
      {super.key, required this.yol, required this.renk, required this.renk2, required this.isim});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
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
      ),
      
      Text(isim),
    ]);
  }
}