import 'package:demo_app/pages/home_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  //widgetApp //Material app //cupertionApp
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
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

//state is just a information about your UI state of your app. it needs when you change something in your widget tree during runtime.

//setState is a function which allow you to change the state of your app during runTime.
