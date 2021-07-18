

class Model3 {
  int _id ;
  String _title ;
  String _imgUrl;

  int get id => _id;
  String get title => _title;
  String get imgUrl => _imgUrl;

  Model3(int id , String title , String imgUrl){
    _id = id ;
    _title = title;
    _imgUrl = imgUrl;
  }
  Model3.fromJson(Map<String,dynamic> jsonData){
    _id = jsonData["id"];
    _title = jsonData["title"];
    _imgUrl = jsonData["thumbnailUrl"];
  }
}
