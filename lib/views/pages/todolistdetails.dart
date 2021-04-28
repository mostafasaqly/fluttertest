import 'package:flutter/material.dart';

class ToDoListDetials extends StatefulWidget {
  final int userId;
  final int id;
  final String title;
  final bool completed;
  ToDoListDetials({this.id, this.userId, this.title, this.completed});
  @override
  _ToDoListDetialsState createState() => _ToDoListDetialsState();
}

class _ToDoListDetialsState extends State<ToDoListDetials> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 20,
                color: Colors.black,
                shadowColor: Colors.red,
                margin: EdgeInsets.all(4.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  
                ),
                child: Column(
                  children: [
                    Text(
                      "ID : " + (widget.id).toString(),
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("User ID : " + (widget.userId).toString(),
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Text("User Title : " + (widget.title),
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Text(
                      "User Completed : " + (widget.completed).toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
