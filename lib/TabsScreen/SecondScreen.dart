import 'package:dragon_app/Package/model.dart';
import 'package:dragon_app/Package/model2.dart';
import 'package:dragon_app/service/restful%20api.dart';
import 'package:flutter/material.dart';


class Second extends StatefulWidget {

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  // Todo Variables ...
  var data = Restapi();


  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/tap2.jpg"),
          )
      ),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: FutureBuilder<List<Model2>> (
                future: data.fetch2ndTap(),
                builder: (context,snap){
                  print("suceess 2 ${snap.data} ");

                  if(snap.connectionState != ConnectionState.done){
                    return CircularProgressIndicator();
                  }
                  else if( snap.hasData){
                    print("sucees 4");
                    List<Model2> model = snap.data ;
                    print("sucees 3");
                    return ListView.separated(

                      separatorBuilder: (context,index){
                        return SizedBox(
                          height: 20,
                        ) ;
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
                            title: Text(model[index].title , maxLines: 3,overflow: TextOverflow.ellipsis,),
                            subtitle: Text(model[index].completed?"male":"Female"),
                            leading: CircleAvatar(
                              child: Text("${model[index].id}"),
                            ),
                            tileColor: Colors.grey,
                          ),
                        );
                      },

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
        ],
      ),
    );
  }
}
