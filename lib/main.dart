import 'package:flutter/material.dart';
import 'Screens/loginScreen.dart';
import 'Screens/signUp.dart';
import 'Screens/home.dart';
import 'Screens/mapScreen.dart';
import 'Screens/scanQRcode.dart';
import 'package:restaurant/Screens/indexScreen.dart';
import 'package:restaurant/Screens/restaurantScreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RestaurantScreen(),
    );
  }
}
