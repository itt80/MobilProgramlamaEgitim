import 'package:flutter/material.dart';
import 'package:h506_drawer/cekmece.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Drawer',
        home: MaterialApp(
          title: 'Flutter Demo',
          initialRoute: '/',
          routes: {
            '/ayarlar': (context) => const AyarlarSayfasi(),
            '/sepetim': (context) => const SepetimSayfasi(),
            '/': (context) => const GirisSayfasi(),
          },
          theme: ThemeData(primarySwatch: Colors.blue),
        ));
  }
}

class GirisSayfasi extends StatelessWidget {
  const GirisSayfasi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigasyon Örneğim")),
      drawer: Cekmece(),
      body: Center(
        child: Text('Giriş Sayfası',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}

class SepetimSayfasi extends StatelessWidget {
  const SepetimSayfasi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigasyon Örneğim")),
      drawer: Cekmece(),
      body: Center(
        child: Text('Sepetim Sayfası',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}

class AyarlarSayfasi extends StatelessWidget {
  const AyarlarSayfasi({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigasyon Örneğim")),
      drawer: Cekmece(),
      body: Center(
        child: Text('Ayarlar Sayfası',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}
