import 'dart:convert';

/// postId : 1
/// id : 1
/// name : "id labore ex et quam laborum"
/// email : "Eliseo@gardner.biz"
/// body : "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"

class Model {
  int _postId;
  int _id;
  String _name;
  String _email;
  String _body;

  int get postId => _postId;
  int get id => _id;
  String get name => _name;
  String get email => _email;
  String get body => _body;

  Model({
      int postId, 
      int id, 
      String name, 
      String email, 
      String body}){
    _postId = postId;
    _id = id;
    _name = name;
    _email = email;
    _body = body;
}

  Model.fromJson(Map <String , dynamic > jsonData) {
    _postId = jsonData["postId"];
    _id = jsonData["id"];
    _name = jsonData["name"];
    _email = jsonData["email"];
    _body = jsonData["body"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["postId"] = _postId;
    map["id"] = _id;
    map["name"] = _name;
    map["email"] = _email;
    map["body"] = _body;
    return map;
  }

}