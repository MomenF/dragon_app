import 'package:dragon_app/Package/post.dart';

class Posts{

  List<dynamic> PostsList ;

  Posts({this.PostsList});

  factory Posts.fromjson(Map<String,dynamic> jsonData){
           return Posts(
             PostsList: ["PostsList"],
           );
  }


}