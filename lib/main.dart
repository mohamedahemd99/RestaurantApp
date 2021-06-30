import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'signUp.dart';
import 'location.dart';
import 'selectLocation.dart';
import 'scanQRcode.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
        home: LoginScreen(),
    );
  }
}
