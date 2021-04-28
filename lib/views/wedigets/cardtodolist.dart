import 'package:flutter/material.dart';
import 'package:mostaf_app/views/pages/todolistdetails.dart';


class CardToDoList extends StatefulWidget {
  final int userId;
  final int id;
  final String title;
  final bool completed;
  CardToDoList({this.id, this.userId, this.title, this.completed});
  @override
  _CardToDoListState createState() => _CardToDoListState();
}

class _CardToDoListState extends State<CardToDoList> {
  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => 
          ToDoListDetials(title:widget.title,
           completed :widget.completed,
           id: widget.id,
           userId: widget.userId,)
         
         ),
         );
      } 
      ,
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
              ],),
          ),
        ),
        
      ),
    );
  }
}