import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(
    title: "Deneyap Restoranı",
    home: Menum(),
  ));
}

class Menum extends StatefulWidget {
  const Menum({Key? key}) : super(key: key);
  
  @override
  _MenumState createState() {
    return _MenumState();
  }
}

class _MenumState extends State<Menum> {
  List<TurModeli> turler = [];
  final Uri _url =
      Uri.parse("https://raw.githubusercontent.com/onurdonmez/deneyap/main/db.json");
  Future<void> menuyuGetir() async {
    var res = await http.get(_url, headers: {"Accept": "application/json"});
    List sonuc = json.decode(res.body)['turler'];
    setState(() {
      sonuc.forEach((element) {
        turler.add(TurModeli(element["baslik"], element["ikon"]));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    
    menuyuGetir();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deneyap Restoran"),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(30),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        children: [...turler.map((e) => (Tur(e._baslik, e._img))).toList()],
      ),
    );
  }
}

class Tur extends StatelessWidget {
  final String _baslik;
  final String _img;
  const Tur(this._baslik, this._img);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
              _img,
              fit: BoxFit.scaleDown,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              _baslik,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TurModeli {
  final String _baslik;
  final String _img;
  const TurModeli(this._baslik, this._img);
}
