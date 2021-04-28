import 'package:flutter/material.dart';
import 'package:mostaf_app/notfound.dart';
import 'package:mostaf_app/signin.dart';
import 'package:mostaf_app/views/pages/todolistpage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
                title: Text("Products"),
                onTap: () {
                  print("Products");
                }),
            ListTile(
                title: Text("Orders"),
                onTap: () {
                  print("Orders");
                }),
            ListTile(
                title: Text("Categories"),
                onTap: () {
                  print("Categories");
                }),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: Text(
                  "home screen",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                number++;
                print(number);
              },
              child: Text(
                "title $number",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
            Icon(Icons.home),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => NotFound(),
                    ),
                  );
                },
                child: Text("not Found Page")),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => SignInPage(),
                    ),
                  );
                },
                child: Text("Sign-in Page")),


            InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => ToDoListPage(),
                    ),
                  );
                },
                child: Text("To Do List")),
          ],
        ),
      ),
    );
  }
}
