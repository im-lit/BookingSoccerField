import 'package:flutter/material.dart';
import '../representation/screens/login-page.dart';
import '../services/firebase_services.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Nam Long'),
            accountEmail: Text('longntnse141021@fpt.edu.vn'),
            currentAccountPicture: CircleAvatar(
                child: ClipOval(
              child: Image.network(
                'https://qph.cf2.quoracdn.net/main-qimg-9495a9a3ed899dcad60db0f2cee75f12-lq',
                height: 90,
                width: 90,
                fit: BoxFit.cover,
              ),
            )),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                    'https://c4.wallpaperflare.com/wallpaper/188/87/652/soccer-manchester-city-f-c-logo-wallpaper-preview.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              'Request',
            ),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: const Center(
                  child: Text(
                    '8',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () async {
              await FirebaseServices().signOut();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
