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

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          child: Text(
            "I am a box",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.green,
            ]),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// stateless widget is something that is not suppose to change.
//container is a type of box
//it is a shade which is made of combition of two or more colors.
