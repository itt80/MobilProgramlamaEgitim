import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('Bu metin, bodyLarge stilini kullanıyor.', 
                style: Theme.of(context).textTheme.bodyMedium
              ),
              
              SizedBox(height: 300),
              
              Text('Bu metin, displayMedium stilini kullanıyor.', 
                style: Theme.of(context).textTheme.displayMedium
              ),
              
              SizedBox(height: 16),
              
              Text(
                'Bu metin, titleLarge stilini kullanıyor.',
                style: Theme.of(context).textTheme.titleLarge
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
