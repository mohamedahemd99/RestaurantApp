import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/navBar/favorites.dart';
import 'file:///C:/Users/Rossia/AndroidStudioProjects/ui_project1/RestaurantApp/lib/navBar/order/order.dart';
import 'package:restaurant/navBar/profile.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
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
        fixedColor:Colors.grey,
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
            icon: new Icon(Icons.favorite_border,color: Colors.grey),
            title: new Text("Favorites"),
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.person,color: Colors.grey),
            title: new Text("Profile"),
          ),

        ],
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: getwidth(context),
                  color: primaryColor,
                  padding: EdgeInsets.all(15),
                  height: 70.0,
                  child: Text("logo",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30.0),),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(children: [
                    SizedBox(height: 10.0,),
                    //menu
                    Container(
                      height:100 ,
                      child: ListView.builder(itemBuilder:(context, index) => MenuCard()  ,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    //best offer
                    Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Best Offers",style: mainFontStyle,),
                              SizedBox(height: 25.0,),
                              Container(
                                height: 380,
                                child: ListView.builder(
                                  itemBuilder:(context, index) => OfferCard() ,
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                              SizedBox(height: 50.0,),
                            ])
                    ),
                    //Detailed Ads
                    Column(
                        children: [
                          Text("ADS",style: mainFontStyle,),
                          SizedBox(height: 15.0,),
                          Row(children: [
                            Expanded(child: Text("Most popular",overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 25.0),)),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("26 places ",style: TextStyle(color: Colors.red,fontSize: 15.0),),
                                  Icon(Icons.arrow_forward_ios,color: Colors.red,size: 15,),
                                ],
                              ),
                            ),
                          ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          //Ads
                          Container(
                            height: 300,
                            child: ListView.separated(
                              itemBuilder:(context, index) => ImageWithStack() ,
                              itemCount: 10,
                              separatorBuilder: (context, index) => SizedBox(width: 20.0,),
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ]
                    ),
                    SizedBox(height: 30.0,),
                    Row(children: [
                      Expanded(child: Text("Restaurants",overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 25.0),)),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("26 places ",style: TextStyle(color: Colors.red,fontSize: 15.0),),
                            Icon(Icons.arrow_forward_ios,color: Colors.red,size: 15,),
                          ],
                        ),
                      ),
                    ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //Restaurants
                    ListView.separated(
                      itemBuilder:(context, index) => SaledItem() ,
                      itemCount: 3,
                      separatorBuilder: (context, index) => SizedBox(height: 10.0,),
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,

                    ),
                  ],),
                ),
                SizedBox(height: 30.0,)
              ],
            ),
          ),
        ),
      ),

    );
  }
}
