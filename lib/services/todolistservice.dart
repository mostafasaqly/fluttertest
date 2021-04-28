import 'package:dio/dio.dart';
import 'package:mostaf_app/models/todolist.dart';

class ToDoListSerice{
  String url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<ToDoList>> getToDoList() async{
    List<ToDoList> todolists = [];
    Response response = await Dio().get(url);
    var data = response.data;
    data.forEach((value){
      todolists.add(ToDoList.fromJson(value));
    });
    return todolists;
  }

}