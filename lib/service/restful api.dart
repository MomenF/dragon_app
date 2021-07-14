import 'package:dragon_app/Package/Posts.dart';
import 'package:dragon_app/Package/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Restapi {

  Future <List<Post>> fetchData() async {
    try {
      var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
      var res = await http.get(url);
      if (res.statusCode == 200) {
        var data = json.decode(res.body);
        print(data);
        Posts posts = Posts.fromjson(data);
        List<Post> modelList =
        posts.PostsList.map((e) => Post.fromJson(e)).toList();
        return modelList;
      } else {
        print("status code ${res.statusCode}");
      }
    }catch(e){
      print(e);
    }

  }


}