import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class PagesIntro extends StatelessWidget {

  @override
  Widget build(BuildContext context) => SafeArea(
      child: Center(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "hello",
              body: 'Welcomr Screen',
            ),
            ],

        done: Text('Finish',style: TextStyle(),),
        onDone: (){},


    ),
      ));
}
