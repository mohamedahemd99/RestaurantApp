import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/Screens/mainHome.dart';
import 'package:restaurant/navBar/profile.dart';

import 'order/order.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 35.0,
          child: FloatingActionButton(onPressed: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => MainHome(),));
          },child: Container(
            child: Icon(Icons.home,size: 40,),
            alignment: Alignment.center,
          ),backgroundColor: yellowTextColor,),
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        fixedColor:Colors.green,
        elevation: 0.0,
        showSelectedLabels:true ,
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if(index ==4){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Profile(),));
          }
          if(index==3){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Favorites(),));
          }
          if(index ==0){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Order(),));
          }

        },
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.shopping_cart,color: Colors.grey,),
            title: new Text("cart"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.shopping_cart,color: Colors.grey),
            title: new Text("My orders"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home,color: Colors.grey),
            title: new Text("Home"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.favorite_border,color: Colors.green),
            title: new Text("Favorites"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text("Profile"),
          ),

        ],
      ),

      backgroundColor: backgroundColor,
      body: SafeArea(
          child:Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    color: backgroundColor2,
                    width: getwidth(context),
                    height: 50.0,
                    child: Text("Favorites",style: TextStyle(color: Colors.black,fontSize: 25.0,fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(child: FavoriteItem()),
                        SizedBox(width: 10.0,),
                        Expanded(child: FavoriteItem()),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(child: FavoriteItem()),
                        SizedBox(width: 10.0,),
                        Expanded(child: FavoriteItem()),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(child: FavoriteItem()),
                        SizedBox(width: 10.0,),
                        Expanded(child: FavoriteItem()),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(child: FavoriteItem()),
                        SizedBox(width: 10.0,),
                        Expanded(child: FavoriteItem()),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
