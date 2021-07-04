import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              scale: 2.0,
                image:AssetImage('images/logo.png'),
            ),
          ),
          child:SpinKitPulse(

            color: Colors.white,
            size: 200.0,
          ) ,
        ),
      ),
    );
  }
}
