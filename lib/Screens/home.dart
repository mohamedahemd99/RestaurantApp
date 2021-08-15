import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/Screens/loginScreen.dart';
import 'package:restaurant/Screens/mainHome.dart';
import 'file:///C:/Users/Rossia/AndroidStudioProjects/restaurant/lib/Screens/scanQRcode.dart';
import 'mapScreen.dart';
import '../Constants/constants.dart';



class Home extends StatefulWidget {
  var address;
  Home(this.address);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String address;
  var currentLocation;
getCurrentLocation()async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    getAddressLocation(Coordinates(position.latitude, position.longitude));
    currentLocation=position;
    print(position);
  }

  getAddressLocation(Coordinates cords)async{
    var addresses = await Geocoder.local.findAddressesFromCoordinates(cords);
    var first = addresses.first;
    address= "${first.addressLine}";
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    (widget.address!=null)?getLocationFromMap():
    getCurrentLocation();
  }

  getLocationFromMap(){
  address=widget.address;
  setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                 image: DecorationImage(
                   image:AssetImage('images/home.jpeg'),
                   fit: BoxFit.cover,
                   colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                 ),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                      width: getheight(context),
                      margin: EdgeInsets.only(left:10.0,bottom: 30.0),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.start,

                        children: [

                          Text("Order From Your ",style:TextStyle(fontSize: 17.0,color: primaryColor)),
                          Text("Favourite ",style:TextStyle(fontSize: 17.0,color: yellowTextColor)),
                          Text("Resteraunt",style:TextStyle(fontSize: 17.0,color: primaryColor)),
                        ],
                      )
                    ),
                      Container(
                        width: getwidth(context),
                        child: TextField(
                          decoration: InputDecoration(
                            enabled: false,
                            filled: true,
                            fillColor: Colors.white,
                            alignLabelWithHint:true ,
                            hintText: address,
                            hintStyle:TextStyle(color: hintColor),
                            enabledBorder: OutlineInputBorder(
                              borderSide:BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            prefixIcon: Icon(Icons.add_location,color: yellowTextColor,),
                          ),
                        ),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)), color:yellowTextColor,),
                              margin: EdgeInsets.all(15.0),
                              child:DefultButtom(buttomText: "Go", ontap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context) => MainHome(),));
                              }),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)), color:yellowTextColor,),
                              margin: EdgeInsets.all(15.0),
                              child: DefultButtom(
                                buttomText: "QR Code",
                                  ontap:(){Navigator.push(context,MaterialPageRoute(builder: (context) => QRcode(),));
                                  },)

                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)), color:yellowTextColor,),
                              margin: EdgeInsets.all(15.0),
                              child:DefultButtom(buttomText:"Current location" , ontap: (){
                                setState(() {
                                  getCurrentLocation();
                                });
                              })
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)), color:yellowTextColor,),
                              margin: EdgeInsets.all(15.0),
                              child:DefultButtom(buttomText:"Select location" , ontap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SelectLocation(currentLocation: currentLocation,),));},)

                            ),
                          ),
                        ],
                      ),
                  ],),
                ),
              ),

            ),
            Container(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen(),));
                },
                child: Container(
                  height: 50.0,
                  width: getwidth(context)/5,
                  decoration: BoxDecoration(
                    border: Border.all(color:Colors.grey,width: 2 ),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child:Center(child: Text("LOGIN",style: firstFontCard,))
                ),
              ),
            ) ,

          ],
        ),
      ),
    );
  }
}
