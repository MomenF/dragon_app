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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/tap2.jpg',
                fit: BoxFit.cover,
                height: 700,
              ),
              FutureBuilder <List<Model2>>(
                  future: data.fetch2ndTap(),
                  builder: (context, snap) {
                    print("sucees Acess ");
                    if (snap.connectionState != ConnectionState.done) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snap.hasData) {
                      print("sucees Acess 2 has data");
                      List<Model2> model2 = snap.data;
                      return ListView.separated(
                        separatorBuilder: (context,index){
                            return SizedBox(
                              height: 5,
                                    );
                                       },
                        itemCount: 4,
                        itemBuilder:  (context,index){
                            print(model2[1].title);
                            return Text(model2[index].title);

                      },

                      );
                    } else {
                      return Text(
                        "Error Accured while sending data",
                        style: TextStyle(
                          fontSize: 25 ,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),);
                    }
                  }
              )


            ],

          ),
        ],
      ),
    );
  }
}
