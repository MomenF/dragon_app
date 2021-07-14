import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson( Map< String , dynamic > jsonData){
    return Post(
      userId : jsonData['userId'],
      id     : jsonData['id'],
      title  : jsonData['title'],
      body   : jsonData['body'],
    );
  }

}