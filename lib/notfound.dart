import 'package:flutter/material.dart';

class NotFound extends StatefulWidget {
  @override
  _NotFoundState createState() => _NotFoundState();
}

class _NotFoundState extends State<NotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Not found Page", style: TextStyle(color: Colors.black) ,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding:const EdgeInsets.all(10.0),
            child: Card(
                child: Text(
                  "Not Found page 404",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                  ),
                ),
              ),)

          ],
        ),
      ),
    );
  }
}