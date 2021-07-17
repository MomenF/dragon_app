import 'dart:convert' as convert;
import 'package:dragon_app/Package/model.dart';
import 'package:http/http.dart' as http;
import 'package:dragon_app/service/restful%20api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  //todo Variables

  var data = Restapi();

  @override
  void initState() {
    // TODO: implement initState
    data.fetchData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return  SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/tap1.jpg"),
              )
            ),
            child: SingleChildScrollView(
              child: FutureBuilder<List<Model>> (
                future: data.fetchData(),
                  builder: (context,snap){
                    print("suceess 2 ${snap.data} ");

                    if(snap.connectionState != ConnectionState.done){
                    return CircularProgressIndicator();
                  }
                  else if( snap.hasData){
                      print("sucees 4");
                      List<Model> model = snap.data ;
                      print("sucees 3");
                    return Expanded(
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                          separatorBuilder: (context,index){
                            return SizedBox(
                              height: 200,
                            ) ;
                          },
                          itemCount: model.length,
                         itemBuilder: (context,index){
                            return ListTile(
                              title: Text(model[index].email , maxLines: 1,overflow: TextOverflow.ellipsis,) ,
                               subtitle:Text(model[index].body,maxLines: 1,overflow: TextOverflow.ellipsis,) ,
                              leading: CircleAvatar(
                                child: Text("${model[index].id}"),
                              ),
                              tileColor: Colors.grey,
                            );
                        },

                      ),
                    );

                  }else{
                    return Center(
                      child: Text("Error While Sending the data",style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,

                      ),),
                    );
                  }
                  }),
            ),
          ),
        ],
      ),
    );
  }
}



