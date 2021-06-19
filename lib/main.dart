import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  //widgetApp //Material app //cupertionApp
  runApp(
    MaterialApp(
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var myText = "Change my name";
  TextEditingController _nameController =
      TextEditingController(); // the value of the field
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/christopher-gower-m_HRfLhgABo-unsplash.jpg",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(padding: const EdgeInsets.all(16.0)),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Enter some Text",
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}

// stateless widget is something that is not suppose to change.
//container is a type of box
//it is a shade which is made of combition of two or more colors.
// main axis of row is horizontal axis and cross axis is vertical axis
// column main axis is vertical axis and cross axis is horizontal axis.

//mainAxisAlignment: MainAxisAlignment.spaceBetween is used to give space between container.
//mainAxisAlignment: MainAxisAlignment.spaceevenly is used to give equal space.

//floatingActionButtonLocation: FloatingActionButtonLocation.endFloat used to locate the floating button,

//State<Homepage> used to give current state of screen. ex- what is happening on the screen
//if u are a human what is ur state like wheather ur sitting,walking,doing something is a state. everthing on ui is a state.
