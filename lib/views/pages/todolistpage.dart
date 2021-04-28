import 'package:flutter/material.dart';
import 'package:mostaf_app/models/todolist.dart';
import 'package:mostaf_app/services/todolistservice.dart';
import 'package:mostaf_app/views/wedigets/cardtodolist.dart';



class ToDoListPage extends StatefulWidget {
  @override
  _ToDoListPageState createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  bool loading= true;
  List<ToDoList> todolist = [];
  getData() async{
    todolist = await ToDoListSerice().getToDoList();
    loading = false;
    setState( () {} );
  }
  @override
  void initState(){
    super.initState();
    getData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
      ),

      body: loading? Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (BuildContext context, int index) {
          return CardToDoList(
            title: todolist[index].title,
            completed : todolist[index].completed,
            id: todolist[index].id,
            userId: todolist[index].userId,
          );
          },)
    );
  }
}