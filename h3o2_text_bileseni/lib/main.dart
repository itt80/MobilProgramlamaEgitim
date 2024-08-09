import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Metin bileşeni"),
        ),
        body: Text(
            "Deneyap Muğla Flutter Örneği",
            //maxLines: 4,
            //overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontFamily: "Roboto",
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w300,
              fontSize: 60,
              color: Colors.blue[800],
              backgroundColor: Colors.yellow[800],
              height: 1.8,
            )),
      ),
    );
  }
}

/* 

Parametre           Açıklama                                                              Veri Tipi               Örnek Değer
maxLines            Gösterilebilecek maksimum satır sayısı                                int                     1, 4
Overflow            Bileşen boyutlarını aşan metinlerin yorumlanma yöntemi                TextOverflow nesnesi
Style               Bileşende gösterilen metnin stil özellikleri                          TextStyle nesnesi    
textAlign           Metnin yatay hizalanma yöntemi                                         TextAlign nesnesi


Değer                     Açıklama
TextOverflow.clip         Aşan satırları göstermez
TextOverflow.fade         Aşan satırları solma efekti uygularak belirtir. Satırlar gösterilmez.
TextOverflow.ellipsis     Aşan satırları son satıra üç nokta ekleyerek belirtir.
TextOverflow.visible      Kapsayıcı boyutlarını aşan satırları gösterir.

 */