import 'package:demo_app/pages/login_page.dart';
import 'package:demo_app/utils/constants.dart';
import 'package:flutter/material.dart';
import '../drawer.dart';
import '../name_card_widget.dart';
import 'package:http/http.dart' as http;
import "dart:convert";

class Homepage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // var myText = "Change my name";
  // TextEditingController _nameController =
  //     TextEditingController(); // the value of the field

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
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
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(data[index]['title']),
                    subtitle: Text("ID: ${data[index]["id"]}"),
                    leading: Image.network(data[index]["url"]));
              },
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
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
