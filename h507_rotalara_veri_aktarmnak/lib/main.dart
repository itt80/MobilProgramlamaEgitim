import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:h507_rotalara_veri_aktarmnak/mesaj_sablonu.dart';
// https://pub.dev/documentation/chat_bubbles/latest/
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rotalara Veri Göndermek',
      routes: {
        "/": (context) => const GirisEkrani(),
        "/mesajlar": (context) => const MesajEkrani(),
      },
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class GirisEkrani extends StatelessWidget {
  const GirisEkrani({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigasyon Örneğim")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              "/mesajlar",
              arguments: MesajSablonu(
                mesaj: "Merhaba",
                kimden: "Deneyap",
                zaman: DateTime.now(),
              ),
            );
          },
          child: const Text('Mesajımı göster'),
        ),
      ),
    );
  }
}

class MesajEkrani extends StatelessWidget {
  const MesajEkrani({super.key});

  @override
  Widget build(BuildContext context) {
    final MesajSablonu mesaj =
        ModalRoute.of(context)!.settings.arguments as MesajSablonu;

    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj.kimden),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DateChip(
              date: mesaj.zaman,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 20, 0),
              width: double.infinity,
              child: Text(
                DateFormat("HH:mm:ss").format(mesaj.zaman),
                textAlign: TextAlign.end,
                style: const TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ),
            BubbleSpecialOne(
              text: mesaj.mesaj,
              isSender: true,
              color: Colors.greenAccent,
            ),
          ],
        ),
      ),
    );
  }
}
