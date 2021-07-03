import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding/onboarding.dart';

class IntroScreen extends StatefulWidget {

  _IntroScreenState createState() => _IntroScreenState();

}

class _IntroScreenState extends State<IntroScreen> {
  // Todo Variables
  var pc = PageController();
  List<PageCO> ListPages = [
      PageCO(
          url: 'assets/images/1.jpg',
          title: 'Rockets Engines',
          subtitle: 'The company has Developed three families of rockets engines',
      ),
      PageCO(
          url: 'assets/images/2.jpg',
          title: 'Dragon SpaceCraft',
          subtitle: 'SpaceX announced plans to pursue a human-rated \n  '
              'commerical  space programme through the end ',
      ),
      PageCO(
          url: 'assets/images/3.jpg',
          title: 'Launch Vehicles',
          subtitle: 'Falcon 1 was a small rocket capable of placing several hundreds kilograms '
              'into low earth orbit ',
      ),
  ];


  Widget build(BuildContext context) {

    return SafeArea(
        child: Center(
          child: IntroductionScreen(
            pages: [
              PageViewModel(
                decoration: PageDecoration(
                      pageColor: Colors.blueGrey[900],
                      imagePadding: EdgeInsets.only(top: 50),
                      contentPadding: EdgeInsets.symmetric(vertical: 40)
                ),
                image:  Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('assets/images/1.jpg',) ,
                  ),
                ),
                titleWidget: Text('Rockets Engines',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                bodyWidget: Text('The company has Developed three families of rockets engines',
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.white,
                  ),

                ),


              ),
              PageViewModel(
                decoration: PageDecoration(
                      pageColor: Colors.blueGrey[900],
                      imagePadding: EdgeInsets.only(top: 50),
                      contentPadding: EdgeInsets.symmetric(vertical: 40)
                ),
                image:  Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('assets/images/2.jpg',) ,
                  ),
                ),
                titleWidget: Text('Dragon SpaceCraft',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                bodyWidget: Text('SpaceX announced plans to pursue a human-rated \n  '
                    'commerical  space programme through the end',
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.white,
                  ),

                ),


              ),
              PageViewModel(
                decoration: PageDecoration(
                      pageColor: Colors.blueGrey[900],
                      imagePadding: EdgeInsets.only(top: 50),
                      contentPadding: EdgeInsets.symmetric(vertical: 40)
                ),
                image:  Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage('assets/images/3.jpg',) ,
                  ),
                ),
                titleWidget: Text('Launch Vehicles',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                bodyWidget: Text('Falcon 1 was a small rocket capable of placing several hundreds kilograms '
                    'into low earth orbit ',
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.white,
                  ),

                ),


              ),
            ],
            showSkipButton: true,
            showNextButton: true,
            skip:Stack(
              alignment: AlignmentDirectional.center,
              children: [
              Container(
                height: 30,
                width: 50,
            decoration: BoxDecoration(
                color:Colors.orange ,
                borderRadius: BorderRadius.circular(20)
            ),
            ),
               Text("  Skip   ",style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),
          ]
            ),
            next:Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        color:Colors.blue ,
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  Text("Next",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                ]
            ),
            done: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color:Colors.red ,
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),

                  Text("Finish",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),),
                ]
            ),
            onDone: (){
              Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
            },
          ),
        ),
      );




  }

}
Widget Buildpage(PageCO ListPages ){
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(700),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 5,
                  blurRadius: 30,
                  color: Colors.grey,
                  offset: Offset.fromDirection(100)
                ),
              ]
            ),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage('${ListPages.url}',) ,
            ),
          ),
          Text('${ListPages.title}',style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
          ),),
          Text('${ListPages.subtitle }',
            maxLines: 5,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,

            ),
          ),
        ],
      ),



    ],
  ) ;
}



class PageCO {
  String url ;
  String title ;
  String subtitle ;

  PageCO({
    @required this.url,
    @required this.title,
    @required this.subtitle,
}){}




}







//
//
// CircleAvatar(
// radius: 200,
// backgroundImage: AssetImage('assets/images/3.jpg',) ,
// ),
// CircleAvatar(
// radius: 200,
// backgroundImage: AssetImage('assets/images/4.jpg',) ,
// ),


