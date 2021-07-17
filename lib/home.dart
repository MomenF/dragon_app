import 'package:dragon_app/Models/Component.dart';
import 'package:dragon_app/TabsScreen/SecondScreen.dart';
import 'package:dragon_app/TabsScreen/ThirdScreen.dart';
import 'package:dragon_app/TabsScreen/firstScreen.dart';
import 'package:dragon_app/service/restful%20api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'Models/shipsApi.dart';
import 'dart:convert' as convert;
import 'Package/model.dart';
import 'Package/post.dart';

class Home extends StatefulWidget {

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Todo Variables ..Here..

  List Taps = [
    First(),
    Second(),
    Third(),
  ];
  var tabs = GlobalKey<ScaffoldState>();
  bool colorChange1 = false ;
  bool colorChange2 = false ;
  bool colorChange3 = false ;
  var data = Restapi();
  int t = 0;


  @override
      void initState() {
    data.fetchData();
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
        title: Text("SpaceX", style: TextStyle(
          color: Colors.white,
        ),),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.article_outlined, color: Colors.red,),),
            );
          },
        ),

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
        margin: const EdgeInsets.only(
          top: 30,
          right: 10,
          left: 10,
        ),
        height: double.infinity,
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),


            )

        ),

        child: Container(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(

                width: double.infinity,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                MaterialButton(
                 onPressed: (){
                        setState(() {
                        t = 0;
                        colorChange1 = true ;
                        colorChange2 = false ;
                        colorChange3 = false ;

                        });
                 },
                 child: Text(
                   "Rockets",style: TextStyle(
                   color: colorChange1?Colors.blue : Colors.red ,
                   fontWeight: FontWeight.bold ,
                   fontSize: 16
                 ),
                 ),

        ),
                MaterialButton(
                 onPressed: (){
                        setState(() {
                        t = 1;
                        colorChange1 = false ;
                        colorChange2 = true ;
                        colorChange3 = false ;
                        });
                 },
                 child: Text(
                   "Launches",style: TextStyle(
                     color: colorChange2?Colors.blue : Colors.red,
                     fontWeight: FontWeight.bold ,
                     fontSize: 16
                 ),
                 ),

        ),
                MaterialButton(
                 onPressed: (){
                        setState(() {
                          colorChange1 = false ;
                          colorChange2 = false ;
                          colorChange3 = true ;
                        t = 2;
                        });
                 },
                 child: Text(

                   "Ships",style: TextStyle(
                     color: colorChange3?Colors.blue : Colors.red,
                     fontWeight: FontWeight.bold ,
                     fontSize: 16
                 ),
                 ),

        ),
        ],
      ),
              ),
              Expanded(child:  Taps[t],)

      ],
    )
    ,
    )
    ,
    )
    ,

    );
  }
}





















/**
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

 **/