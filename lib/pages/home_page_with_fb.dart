import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/utils/constants.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'package:http/http.dart' as http;
import "dart:convert";
import 'dart:core';

class HomepageFB extends StatelessWidget {
  static const String routeName = "/homefb";
  // var myText = "Change my name";
  // TextEditingController _nameController =
  //     TextEditingController(); // the value of the field

  Future fetchData() async {
    var url = "https://jsonplaceholder.typicode.com/photos";
    var res = await http.get(Uri.parse(url));
    var data = jsonDecode(res.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs!.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Fetch something"),
              );

            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );

            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(
                  child: Text("Some Error occured"),
                );
              }

              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(snapshot.data[index]['title']),
                      subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
                      leading: Image.network(snapshot.data[index]["url"]));
                },
                itemCount: snapshot.data.length,
              );
          }
        },
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}

//itembuilder how ur item looks in the list view.
// Navigator.pushNamed it will send us to desired page but when we press backbutton it will back to previous page. so
// thats why we use Navigator.pushReplacementNamed to go on desired page, it send us to desired page and when we call pushreplacementnamed then it will send us to previous page and
//if we click back then it will exit back but in push named it will create a loop that when we call push named it will send us on desired page and if we call again it will send us to previous page and if again we call pushnamed will send to desired page it will not exit the app, it will create a loop.
