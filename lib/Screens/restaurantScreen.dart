import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/Screens/mainHome.dart';
import 'package:restaurant/navBar/favorites.dart';
import 'file:///C:/Users/Rossia/AndroidStudioProjects/ui_project1/RestaurantApp/lib/navBar/order/order.dart';
import 'package:restaurant/navBar/profile.dart';

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        child: CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 35.0,
          child: FloatingActionButton(onPressed: (){},child: Container(
            child: Icon(Icons.home,size: 40,),
            alignment: Alignment.center,
          ),backgroundColor: yellowTextColor,),
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
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
        fixedColor:Colors.grey,
        type: BottomNavigationBarType.fixed,
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
    appBar:AppBar(
      leading:InkWell(onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => MainHome(),));
      }, child: Row(children: [
        Icon(Icons.arrow_back_ios,color: yellowTextColor,),
        Text("Back",style: TextStyle(color: yellowTextColor),),
      ],
      ),) ,
      backgroundColor: backgroundColor,
      elevation: 0.0,
      titleSpacing: 15.0,
) ,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                //restaurant name
                Expanded(flex: 3,
                    child: Text("Conrad Chicago Restaurant",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 25.0),
                    maxLines: 2,),),
                //contact
                Expanded(flex: 1,
                    child:InkWell(
                      child:
                      Container(
                          decoration: BoxDecoration(
                            color: yellowTextColor,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                          padding: EdgeInsets.all(15.0),
                          child: Center(
                              child: Text("Contact",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),  ),
                      onTap: () {} ,

                    )
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //about restaurant
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0,right: 15.0,left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("963 Madyson Drive Suite 679",style: TextStyle(color: Colors.grey[600],fontSize: 15.0),),
                        SizedBox(height: 10.0,),
                        //delivery
                        Row(
                          children: [
                            Text("Delivery :",
                              style: TextStyle(color: Colors.grey[700],fontSize: 15.0,fontWeight: FontWeight.bold),),
                            Text(" free",style: TextStyle(color: Colors.grey[600],fontSize: 15.0,fontWeight: FontWeight.bold)),

                          ],
                        ),
                        SizedBox(height: 3.0,),
                        //Door's open
                        Row(
                          children: [
                            Text("Open time :",style: TextStyle(color: Colors.grey[700],fontSize: 15.0,fontWeight: FontWeight.bold),),
                            Text(" 8:00 am"
                              ,style: TextStyle(color: Colors.grey[600],fontSize: 15.0,fontWeight: FontWeight.bold),),

                          ],
                        ),
                        SizedBox(height: 3.0,),
                        //rate
                        Row(children: [
                          FiveStar(),
                          SizedBox(width: 5.0,),
                          Text("(334 reviews)",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),)
                        ],)
                      ],
                    ),
                  ),
                  //options
                  Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: primaryColor,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(backgroundColor: yellowTextColor,child: IconButton(icon: Icon(Icons.file_upload,color: Colors.white), onPressed: (){})),
                        SizedBox(width: 15.0,),
                        CircleAvatar(backgroundColor: yellowTextColor,child: IconButton(icon: Icon(Icons.star_border,color: Colors.white), onPressed: (){})),
                        SizedBox(width: 15.0,),
                        CircleAvatar(backgroundColor: yellowTextColor,child: IconButton(icon: Icon(Icons.location_on,color: Colors.white,), onPressed: (){})),


    ],
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Best Offers",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0),),
                       SizedBox(height: 25.0,),
                        //offers
                        Container(
                          height: 380,
                          child: ListView.builder(
                            itemBuilder:(context, index) => OfferCard() ,
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,

                          ),
                        ),
                        SizedBox(height: 50.0,),
                        Container(
                          color: backgroundColor2,
                          child: Column(
                            children: [
                              //menu
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(children: [
                                  Expanded(child: Text("Menu",overflow: TextOverflow.ellipsis,style: TextStyle(color: primaryColor,fontSize: 30.0),)),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("View all ",style: TextStyle(color: yellowTextColor,fontSize: 20.0),),
                                        Icon(Icons.arrow_forward_ios,color: yellowTextColor,),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                              ),
                              SizedBox(height: 20.0,),
                              //menu card
                              Container(
                                height:100 ,
                                child: ListView.builder(itemBuilder:(context, index) => MenuCard()  ,
                                  itemCount: 6,
                                  scrollDirection: Axis.horizontal,
                                ),
                              ),
                              SizedBox(height: 60.0,),
                              //foods bs 3ayz ytzbt
                              ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                  itemBuilder:(context, index) =>ListOfStaredItems(),
                                itemCount:3 ,

                              ),
                              SeparatedLine(),

                              SizedBox(height: 50.0,),
                              Text("Featured Items",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0),),
                              SizedBox(height: 25.0,),
                              //featured items card
                              Container(
                                height: 355,
                                child: ListView.builder(
                                  itemBuilder:(context, index) => FeaturedItemsCard() ,
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,

                                ),
                              ),
                              SizedBox(height: 100.0,),
                              //rating place
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                      boxShadow:  <BoxShadow>[
                                        new BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 3.0,
                                          offset: new Offset(2.0, 2.0),
                                          spreadRadius: 2
                                        )
                                      ]
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(child: Text("Rate this Place",style: TextStyle(color: Color(0xff1b2c3f),fontSize: 20.0,fontWeight: FontWeight.bold),)),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            FiveStar(),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.0,),

                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  width: getwidth(context),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow:  <BoxShadow>[
                                        new BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 3.0,
                                          offset: new Offset(2.0, 2.0),
                                          spreadRadius: 2.0,
                                        )
                                      ]
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 40.0),
                                  child:Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Ratings and Reviews",style: TextStyle(color: Color(0xff1b2c3f),fontWeight: FontWeight.bold,fontSize: 20.0),),
                                      SizedBox(height: 20.0,),
                                      Row(
                                        children: [
                                          FiveStar(),
                                          Text("   334",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                        ],
                                      ),
                                      SizedBox(height: 15.0,),
                                      Text("Rated 3.5 out of 5",style: TextStyle(fontSize: 15.0,color: hintTextFont),),
                                      SizedBox(height: 20.0,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Rating(),
                                          Rating(),
                                          Rating(),
                                          Rating(),
                                          Rating(),
                                        ],
                                      ),
                                      SizedBox(height: 15.0,),
                                      //rate and review
                                      Center(
                                        child: InkWell(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: yellowTextColor,
                                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                                            ),
                                            child: Text("Rate and Review",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                            padding:EdgeInsets.all(20.0) ,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 60.0,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),

    );
  }
}



