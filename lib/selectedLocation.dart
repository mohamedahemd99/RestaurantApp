import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/location.dart';
import 'selectLocation.dart';
import 'scanQRcode.dart';
import 'constants.dart';

class Home1 extends StatelessWidget {
  Home1({this.data});
  String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    margin: EdgeInsets.only(left:10.0,bottom: 30.0),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.start,

                      children: [

                        Text("Order From Your ",style:TextStyle(fontSize: 18.0,color: primaryColor)),
                        Text("Favourite ",style:TextStyle(fontSize: 18.0,color: yellowTextColor)),
                        Text("Resteraunt",style:TextStyle(fontSize: 18.0,color: primaryColor)),
                      ],
                    )
                ),
                TextField(
                  decoration: InputDecoration(
                    enabled: false,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: data,
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(onPressed: (){},
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          height: 50.0,
                          width: 100.0,
                          child: Center(child: Text("Go",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                            color:yellowTextColor,
                          ),
                        )
                    ),
                    FlatButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => QRcode(),));

                    },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          height: 50.0,
                          width: 100.0,
                          child: Center(child: Text("QR Code",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7.0)),
                            color:yellowTextColor,
                          ),
                        )
                    ),
                  ],
                ),
                FlatButton(onPressed: (){

                  Navigator.push(context,MaterialPageRoute(builder: (context) => SelectLocation(),));
                },
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      height: 50.0,
                      width: 200.0,
                      child: Center(child: Text("Select another location",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                        color:yellowTextColor,
                      ),
                    )
                ),
                FlatButton(onPressed: (){

                  Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),));
                },
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      height: 50.0,
                      width: 200.0,
                      child: Center(child: Text("My Current Location",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                        color:yellowTextColor,
                      ),
                    )
                ),
              ],),
          ),
        ),

      ),
    );
  }


}
