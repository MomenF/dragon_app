import 'package:dragon_app/Package/Posts.dart';
import 'package:dragon_app/Package/model.dart';
import 'package:dragon_app/Package/model2.dart';
import 'package:dragon_app/Package/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class Restapi {


Future<List<Model>> fetchData() async {
  List<Model>  viewModel = [];
  var Url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1/comments');
  var response = await http.get(Url);
  if(response.statusCode == 200 ){
    var jsonData = convert.jsonDecode(response.body) as List<dynamic>;
    for(var item in jsonData){
      viewModel.add(Model.fromJson(item));
    }
    print("suceess");
    return viewModel;
    print("suceess 20 ");



  }else{
     print(" Status error code  ${response.statusCode}");
  }
  return viewModel;

}

Future<List<Model2>>  fetch2ndTap()async {
  List<Model2> modelList = [];
  var Url =  Uri.parse("https://jsonplaceholder.typicode.com/todos");
  var res = await http.get(Url);
  if(res.statusCode == 200){
    var data = convert.jsonDecode(res.body);
    for(var item in data){
      modelList.add(Model2.fromJson(item));
    }
    return modelList;
  }else{
    print("error code is ${res.statusCode}");
  }
  print(modelList);
  return modelList;


  
}

}