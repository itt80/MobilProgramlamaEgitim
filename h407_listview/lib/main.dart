import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var alisverisListem = [
      "EKMEK",
      "SÜT",
      "YOĞURT",
      "MAKARNA",
      "MEYVE SUYU",
      "SODA",
      "ÇAY",
      "MAYDONOZ",
      "ŞAMPUAN"
    ];

    var alisverisListemListView = ListView.builder(
        itemCount: alisverisListem.length,
        itemBuilder: (BuildContext listem, int index) {
          return Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            decoration: BoxDecoration(
              color: Colors.orange[200],
            ),
            child: Center(
              child: Text(
                alisverisListem[index],
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 18,
                ),
              ),
            ),
          );
        });

    // ignore: unused_local_variable
    var listView1 = ListView(
      
      padding: const EdgeInsets.all(8),

      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: const Center(child: Text('Ekmek')),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: const Center(child: Text('Süt')),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Center(child: const Text('Yumurta')),
        ),
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      /* theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ), */
      home: alisverisListemListView,
    );
  }
}
