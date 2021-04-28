import 'package:flutter/material.dart';
import 'package:mostaf_app/views/pages/postdetails.dart';

class MyCard extends StatefulWidget {
  final String body;
  final String title;
  MyCard({this.body, this.title});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => 
          PostDetails(title:widget.title, body:widget.body)
         
         ),
         );
      } ,
          child: Container(
        width:MediaQuery.of(context).size.width* 0.7,
        height: MediaQuery.of(context).size.height* 0.2,
        child: Card(
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),),
                // Text(widget.body),
              ],),
          ),
        ),
        
      ),
    );
  }
}