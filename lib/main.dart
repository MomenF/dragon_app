import 'package:dragon_app/home.dart';
import 'package:dragon_app/pagesintro.dart';
import 'package:dragon_app/pageview.dart';
import 'package:dragon_app/registeration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays(
      [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dragon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {"/" :(context)=>IntroScreen() ,
               "/login" :(context)=>LoginPage() ,
               "/Home" :(context)=>Home() ,
               "/reg" :(context)=>Register() ,
      },
    );
  }
}

