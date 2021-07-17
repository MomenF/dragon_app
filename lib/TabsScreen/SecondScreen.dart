import 'package:flutter/material.dart';


class Second extends StatefulWidget {

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/tap2.jpg',
                  fit: BoxFit.cover,
                  height: 700,
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    "Hello my Second ",
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
