import 'package:flutter/material.dart';
import 'package:restaurant/navBar/checkOut.dart';
import 'package:restaurant/navBar/favorites.dart';
import 'package:restaurant/navBar/profile.dart';
import 'Screens/loginScreen.dart';
import 'Screens/signUp.dart';
import 'Screens/home.dart';
import 'Screens/mapScreen.dart';
import 'Screens/scanQRcode.dart';
import 'package:restaurant/Screens/indexScreen.dart';
import 'package:restaurant/Screens/restaurantScreen.dart';
import 'package:restaurant/Screens/mainHome.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CheckOut(),
    );
  }
}
