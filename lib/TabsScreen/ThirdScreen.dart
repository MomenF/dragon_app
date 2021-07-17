import 'package:flutter/material.dart';


class Third extends StatefulWidget {

  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/tap3.jpg',
                fit: BoxFit.cover,
                height: 700,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Hello my first ",
                  ),
                ),
              ),
            ],

          ),
        ],
      ),
    );

  }
}
