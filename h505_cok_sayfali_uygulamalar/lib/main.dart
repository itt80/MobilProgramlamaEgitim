//https://pub.dev/
//https://pub.dev/packages/pie_chart

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

Map<String, double> harcamalar = {
  "Yiyecek-İçecek": 500,
  "Enerji": 350,
  "Seyahat": 290,
  "İletişim": 240,
};

var anahtarlar = harcamalar.keys.toList();

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Harcama Listesi",
    home: GirisSayfam(),
  ));
}

class GirisSayfam extends StatelessWidget {
  const GirisSayfam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Harcama Özetiniz"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.pie_chart_outline),
              tooltip: 'Grafik Göster',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GrafikSayfam()),
                );
              },
            )
          ],
        ),
        body: ListView.builder(
            itemCount: anahtarlar.length,
            itemBuilder: (BuildContext listem, int index) {
              var anahtarim = anahtarlar[index];
              var degerim = harcamalar[anahtarim];
              return Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ))),
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                child: Text(
                  "$anahtarim : $degerim ₺",
                  style: const TextStyle(fontSize: 20),
                ),
              );
            }));
  }
}

class GrafikSayfam extends StatelessWidget {
  const GrafikSayfam({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grafik Harcama Özeti"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(bottom: 20),
            child: const Text(
                'Harcama özetiniz aşağıda grafik şeklinde sunulmuştur. Her bir harcama kalemine ilişkin renk kodları grafiğin sağında belirtilmiştir.'),
          ),
          PieChart(
            dataMap: harcamalar,
            chartType: ChartType.ring,
            chartRadius: MediaQuery.of(context).size.width / 2,
          )
        ],
      ),
    );
  }
}
