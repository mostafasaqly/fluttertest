import 'package:flutter/material.dart';
import 'package:mostaf_app/notfound.dart';
import 'package:mostaf_app/homebody.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        title: Text(
          "sign in Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: FlutterLogo(
                size: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: 'Phone Number'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(), labelText: 'Password'),
              ),
            ),
            ButtonTheme(
              minWidth: 300.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                    onPressed: () {
                      print("log-in...");
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white),
                    ),
                    // color: Colors.blue
                    ),
              ),
            ),
            GestureDetector(
              child: Text("Forget password? No yawa. Tap me"),
              onTap: () {
                print("Forget password? No yawa. Tap me");
              },
            ),
            ButtonTheme(
              minWidth: 300.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      print("No Account? Sign Up...");
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => NotFound(),
                        ),
                      );
                    },
                    child: Text("No Account? Sign Up"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
