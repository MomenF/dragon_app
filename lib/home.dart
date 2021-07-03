import 'package:dragon_app/Models/Component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'Models/shipsApi.dart';

class Home extends StatefulWidget {

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> shipsTile = [
    ListTile(
    )
  ];




  @override
  void initState() {
    getShipsData();
    super.initState();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      /** the App Bar **/
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.red,
        title:Text("SpaceX",style: TextStyle(
          color: Colors.white,
        ),),
    leading:Builder(
      builder: (context){
        return IconButton(
            onPressed: (){
              Scaffold.of(context).openDrawer();
            },
            icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.article_outlined,color: Colors.red,),),
        );
      },
    ) ,
    ),
      /** the Drawer **/
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("hello")),
          ],
        ),
      ),
      /** The Body **/
      body: Container(
        margin: EdgeInsets.only(
          top: 30,
          right: 10,
          left: 10,
        ),
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),


          )

        ),

        child: Column(
          children: [
            Row(
              children: [
                MaterialButton(
                  child: Text('Space Ships' ,
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 17
                    ) ,),
                  onPressed: (){},
                )
              ],
            ),
            Center(
              child:FutureBuilder(
                  future: getShipsData(),
                  builder: (context,snap){
                    if(snap.connectionState != ConnectionState.done){
                      return CircularProgressIndicator();
                    }else if(snap.hasData){
                      List<ShipsApi> model = snap.data;
                    return  ListTile(
                      title: Text( ,
                      )
                    }else{
                      return Text(" Error during Sending Data ");
                    }
                  }) ,
            ),
          ],
        ),
      ),

    );
  }
}

Future <List<ShipsApi>> getShipsData() async {
  List<ShipsApi> LiSHip = [];
  var response = await Dio().get('https://api.spacexdata.com/v4/ships');
    var responsedata = response.data();
  for(var item in responsedata){
    LiSHip.add(ShipsApi.fromJson(item));
  }
  return LiSHip ;
}

Widget ShipsBuild(ships)=>Container(
  child: ListTile(
    title: Text('ds'),
    subtitle: Text('sd'),
  ),
);

class ships{
  String title;
  String subTitle;

  ships.name({this.title, this.subTitle});

}