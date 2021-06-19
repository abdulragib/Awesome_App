import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Abdul Ragib"),
            accountEmail: Text("abdulragib36@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://instagram.fpat2-2.fna.fbcdn.net/v/t51.2885-19/s320x320/202275436_784096098917607_8868512262180276103_n.jpg?tp=1&_nc_ht=instagram.fpat2-2.fna.fbcdn.net&_nc_ohc=xO86ZQw4b20AX-GZNGF&edm=ABfd0MgBAAAA&ccb=7-4&oh=b42b5467f97eaf0c302d6e9de7d8edf6&oe=60D4CE54&_nc_sid=7bff83"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abdul Ragib"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text("Email"),
            subtitle: Text("abdulragib36@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
