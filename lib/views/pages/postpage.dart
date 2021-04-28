import 'package:flutter/material.dart';
import 'package:mostaf_app/models/post.dart';
import 'package:mostaf_app/services/postservice.dart';
import 'package:mostaf_app/views/wedigets/mycard.dart';

class PostPage extends StatefulWidget {
  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool loading= true;
  List<Post> post = [];
  getData() async{
    post = await PostSerice().getPosts();
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
        title: Text("Posts"),
      ),

      body: loading? Center(child: CircularProgressIndicator()) : ListView.builder(
        itemCount: post.length,
        itemBuilder: (BuildContext context, int index) {
          return MyCard(
            title: post[index].title,
            body: post[index].body,
          );
          },)
    );
  }
}