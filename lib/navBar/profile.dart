import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/Screens/mainHome.dart';
import 'package:restaurant/navBar/favorites.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        currentIndex: 4,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if(index ==4){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Profile(),));
          }
          if(index==3){
            Navigator.push(context,MaterialPageRoute(builder: (context) => Favorites(),));
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
            backgroundColor: Colors.red,
            icon: new Icon(Icons.person,color: Colors.green),
            title: new Text("Profile"),
          ),

        ],
      ),
      backgroundColor: backgroundColor,

      body: SafeArea(
          child:Expanded(
              child:SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      height: 100.0,
                      width: getwidth(context),
                      color: primaryColor,
                      padding: EdgeInsets.all(15),
                      child:Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Text("Profile",
                            style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),)),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(child:Icon(Icons.menu,color: backgroundColor,size: 30.0,), onTap: (){})
                              ],
                            ),
                          )
                        ],
                      ) ,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            margin: EdgeInsets.only(top:40.0),
                            decoration: BoxDecoration(
                                color: backgroundColor2,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow:  <BoxShadow>[
                                  new BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 3.0,
                                      offset: new Offset(2.0, 2.0),
                                      spreadRadius: 2

                                  )
                                ]
                            ),
                            child:Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage("images/user1.jpg"),

                                      ),
                                      SizedBox(width: 10,),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text("Wanda ",style:firstFontCard,),
                                              Icon(Icons.verified_user,color: Colors.green,size: 20.0,)
                                            ],
                                          ),
                                          SizedBox(height: 7.0,),
                                          Text("iamWanda@gmail.com",style: secondFontCard,)
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                  color: backgroundColor,
                                  thickness: 2.0,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child:Text("Account Credits",style: secondFontCard),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("\$52.5",style: TextStyle(color: primaryColor,fontSize: 25.0,fontWeight: FontWeight.bold),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ) ,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                                color: backgroundColor2,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow:  <BoxShadow>[
                                  new BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 3.0,
                                      offset: new Offset(2.0, 2.0),
                                      spreadRadius: 2

                                  )
                                ]
                            ),
                            child:Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                MaterialButton(
                                  padding: EdgeInsets.all(10.0),
                                  onPressed:  (){},
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(

                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Payment Cards",style: firstFontCard,),
                                            SizedBox(height: 7.0,),
                                            Text("Add a credit or debit card",style: secondFontCard,),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.arrow_forward_ios,size: 15.0,color: Colors.black,)
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                  color: backgroundColor,
                                  thickness: 2.0,
                                ),
                                MaterialButton(
                                  padding: EdgeInsets.all(10.0),
                                  onPressed:  (){},
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Address",style: firstFontCard,),
                                            SizedBox(height: 7.0,),
                                            Text("Add or remove a delivery address",style: secondFontCard,),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.arrow_forward_ios,size: 15.0,color: Colors.black,)
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                  color: backgroundColor,
                                  thickness: 2.0,
                                ),
                                MaterialButton(
                                  padding: EdgeInsets.all(10.0),
                                  onPressed:  (){},
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Refer Friends",style: firstFontCard,),
                                            SizedBox(height: 7.0,),
                                            Text("Get \$10.00 Free",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.arrow_forward_ios,size: 15.0,color: Colors.black,)
                                        ],
                                      )

                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                  color: backgroundColor,
                                  thickness: 2.0,
                                ),
                                MaterialButton(
                                  padding: EdgeInsets.all(10.0),
                                  onPressed:  (){},
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      CircleAvatar(
                                                          backgroundColor: Colors.red,
                                                          radius: 20.0,
                                                          child:Icon(Icons.directions_car,size: 20.0,color: Colors.white,)
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text("Delivery Support",style: firstFontCard,),
                                                    ],
                                                  )
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Icon(Icons.arrow_forward_ios,size: 15.0,color: Colors.red,),
                                                ],
                                              ),
                                            ],
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                  color: backgroundColor,
                                  thickness: 2.0,
                                ),
                                MaterialButton(
                                  padding: EdgeInsets.all(10.0),
                                  onPressed:  (){},
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      CircleAvatar(
                                                        backgroundColor: Colors.lightBlueAccent,
                                                        radius: 20.0,
                                                        child:Icon(Icons.call,size: 20.0,color: Colors.white,),
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text("Contact",style: firstFontCard,),
                                                    ],
                                                  )
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Icon(Icons.arrow_forward_ios,size: 15.0,color: Colors.red,),
                                                ],
                                              ),
                                            ],
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                  color: backgroundColor,
                                  thickness: 2.0,
                                ),
                                MaterialButton(
                                  padding: EdgeInsets.all(10.0),
                                  onPressed:  (){},
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      CircleAvatar(
                                                          backgroundColor: Colors.green,
                                                          radius: 20.0,
                                                          child:Icon(Icons.help_outline,size: 20.0,color: Colors.white,)
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text("Term of use",style: firstFontCard,),
                                                    ],
                                                  )
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Icon(Icons.arrow_forward_ios,size: 15.0,color: Colors.red,),
                                                ],
                                              ),
                                            ],
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 2.0,
                                  color: backgroundColor,
                                  thickness: 2.0,
                                ),
                                MaterialButton(
                                  padding: EdgeInsets.all(10.0),
                                  onPressed:  (){},
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      CircleAvatar(
                                                          backgroundColor: Colors.yellow,
                                                          radius: 20.0,
                                                          child:Icon(Icons.lock,size: 20.0,color: Colors.white,)
                                                      ),
                                                      SizedBox(width: 10.0,),
                                                      Text("Privacy policy",style: firstFontCard,),
                                                    ],
                                                  )
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Icon(Icons.arrow_forward_ios,size: 15.0,color: Colors.red,),
                                                ],
                                              ),
                                            ],
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ) ,
                          ),
                        ),

                      ],
                    )

                  ],
                ),
              )
          )
      ),
    );
  }
}
