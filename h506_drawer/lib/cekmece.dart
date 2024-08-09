import 'package:flutter/material.dart';

class Cekmece extends StatelessWidget {
  const Cekmece({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("@deneyap"),
            accountEmail: Text("deneyap@deneyap.org"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('img/account.jpg'),
              // https://unsplash.com/photos/xbBaOa_dd5I
            ),
          ),
          ListTile(
            title: Text("Giriş"),
            leading: Icon(Icons.home),
            onTap: () => Navigator.pushNamed(context, '/'),
          ),
          ListTile(
            title: Text("Sepetim"),
            leading: Icon(Icons.shopping_cart),
            onTap: () => Navigator.pushNamed(context, '/sepetim'),
          ),
          ListTile(
            title: Text("Ayarlar"),
            leading: Icon(Icons.settings),
            onTap: () => Navigator.pushNamed(context, '/ayarlar'),
          ),
        ],
      ),
    );
  }
}

