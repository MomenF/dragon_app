import 'package:dragon_app/Package/model2.dart';
import 'package:dragon_app/Package/model3.dart';
import 'package:dragon_app/service/restful%20api.dart';
import 'package:flutter/material.dart';


class Third extends StatefulWidget {

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  // Todo Variables ..
  var data = Restapi();
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/tap3.jpg"),
          fit: BoxFit.cover,
        )
      ),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: FutureBuilder <List<Model3>>(
              future:  data.fetch3rdTap(),
              builder:(context,snap){
                if(snap.connectionState != ConnectionState.done){
                  return Center(child: CircularProgressIndicator());
                }else if (snap.hasData){
                        List<Model3> model = snap.data;
                    return ListView.separated(
                       separatorBuilder: (context,index){
                         return SizedBox(
                           height: 25,
                         );
                       },
                       itemCount: model.length,
                       itemBuilder: (context,index){
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                             title: Text(model[index].title) ,
                             trailing: Text("${model[index].id}"),
                             leading: CircleAvatar(
                               child: Image.network(
                                 "${model[index].imgUrl}"
                               ),
                             ),
                           ),
                    );
                        },

                        );
                }else{
                  return Center(
                    child: Text(
                      "Error Accoured while sending Data ",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  );
                }
              } ,
            ),
          ),
        ],
      ),
    );

  }
}
