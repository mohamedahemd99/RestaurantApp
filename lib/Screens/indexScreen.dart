import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:restaurant/Screens/home.dart';
class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:Container(height: 60.0,child: DefultButtom(ontap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => Home(null)));
      },buttomText: "GO",width: 1,color: primaryColor,textColor: Colors.white,fontSize: 25,)) ,

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
