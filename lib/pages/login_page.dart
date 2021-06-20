import 'package:demo_app/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'home_page_with_fb.dart';
import 'home_page_with_sb.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/christopher-gower-m_HRfLhgABo-unsplash.jpg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.7),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextFormField(
                            controller: _usernameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: "Enter email",
                              labelText: "Username",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              labelText: "Password",
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Constants.prefs!.setBool("loggedIn", true);
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => Homepage(),
                              //   ),
                              // );

                              Navigator.pushReplacementNamed(
                                  context, HomepageSB.routeName);
                            },
                            child: Text("Sign In"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//form is used to collect a data set like username,password.
//key is a identification of widget. it used to identify widget.
// GlobalKey<FormState>(), global key used to take form state and save it in a variable
// framwork identify which particular widget to rebuild and when.

//navigator.pop means going back (removing item from stack)
//navigator.push means pushing something on the stack (adding item on the top of stack)
//MaterialPageRoute used to route on another material page on stack.
//state is a data or information which a particular widget is using.
