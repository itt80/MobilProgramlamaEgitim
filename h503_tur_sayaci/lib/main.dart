import 'dart:async';

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
      home: const DurumluUygulamam(),
    );
  }
}

class DurumluUygulamam extends StatefulWidget {
  const DurumluUygulamam({super.key});

  @override
  State<DurumluUygulamam> createState() => _DurumluUygulamamState();
}

class _DurumluUygulamamState extends State<DurumluUygulamam> {
  var _tur = 0;
  var _son = DateTime.now();
  var _sayac = "00:00:00";

  final List<String> _satirlar = [];

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(milliseconds: 1), (timer) {
      setState(() {
        _sayac = guncelSayac();
      });
    });
  }

  String guncelSayac() {
    var simdi = DateTime.now();
    var sure = Duration(milliseconds: (simdi.difference(_son).inMilliseconds))
        .toString()
        .substring(0, 11);
    return sure;
  }

  void basildi() {
    var simdi = DateTime.now();
    var sure = Duration(milliseconds: (simdi.difference(_son).inMilliseconds))
        .toString()
        .substring(0, 11);
    _son = simdi;
    _tur++;

    setState(() {
      _satirlar.add("$_tur. Tur: $sure sn");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tur Sayacı"),
        ),
        body: Column(
          children: [
            Text(
              "Sayaç: $_sayac",
              style: const TextStyle(color: Colors.red, fontSize: 24),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _satirlar.length,
                  itemBuilder: (BuildContext listem, int index) {
                    return (Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ))),
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        _satirlar[index],
                        style: const TextStyle(
                            fontFamily: "Roboto Condensed",
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w700),
                      ),
                    ));
                  }),
            ),
            Container(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: basildi,
                  child: const Icon(
                    Icons.add,
                    size: 50,
                  ),
                ))
          ],
        ));
  }
}
