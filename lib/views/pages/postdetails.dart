import 'package:flutter/material.dart';

class PostDetails extends StatefulWidget {
  final String body;
  final String title;
  PostDetails({this.body, this.title});
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: [
                Text(widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),),
                Text(widget.body),
              ],
              ),
        ),
      ),
      
    );
  }
}