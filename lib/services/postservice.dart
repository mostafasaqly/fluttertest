import 'package:dio/dio.dart';
import 'package:mostaf_app/models/post.dart';
class PostSerice{
  String url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getPosts() async{
    List<Post> posts = [];
    Response response = await Dio().get(url);
    var data = response.data;
    data.forEach((value){
      posts.add(Post.fromJson(value));
    });
    return posts;
  }

}