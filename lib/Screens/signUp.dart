import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'loginScreen.dart';
import 'home.dart';
import '../Constants/constants.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff848484) ,
      body: Container(
        width: getwidth(context),
        height: getheight(context),

        decoration: BoxDecoration(
          image: DecorationImage(
              image:AssetImage('images/login.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
          ),
        ),
        child:Container(
          height: getheight(context),
          width: getwidth(context),
          margin: EdgeInsets.all(15.0),

          child: Column(
            children: [
              Column(
                mainAxisAlignment:MainAxisAlignment.center ,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios,color: yellowTextColor,),
                        Text("Back",style: TextStyle(color: yellowTextColor),),
                      ],
                    ),
                  ),
                  Text("Creat Your Account",style: TextStyle(fontSize:25.0,color: Color(0xffabd2b7)),),
                  Text("Sign up to continue",style: TextStyle(fontSize:15.0,color: Color(0xfff4deb0))),
                ],
              ),
              Container(
                height: 430.0,
                margin: EdgeInsets.only(left: 40.0,right: 40.0,top: 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("First Name",style:lableTextFiledStyle ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Name",
                                hintStyle:TextStyle(color: hintColor) ,
                              ) ,
                            ),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Last Name",style:lableTextFiledStyle ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Last Name",
                                hintStyle:TextStyle(color: hintColor) ,
                              ) ,
                            ),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email",style:lableTextFiledStyle ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Email",
                                hintStyle:TextStyle(color: hintColor) ,
                              ) ,
                            ),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Password",style:lableTextFiledStyle ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                hintStyle:TextStyle(color: hintColor) ,
                              ) ,
                            ),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Confirm Password",style:lableTextFiledStyle ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Password",
                                hintStyle:TextStyle(color: hintColor) ,
                              ) ,
                            ),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Phone Number",style:lableTextFiledStyle ),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Phone Number",
                                hintStyle:TextStyle(color: hintColor) ,
                              ) ,
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: FlatButton(onPressed: (){

                        setState(() {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Home(null),));
                        });
                      },
                          child: Container(
                            margin: EdgeInsets.all(20.0),
                            height: 40.0,
                            width: 100.0,
                            child: Center(child: Text("SIGN UP",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(7.0)),
                              color:yellowTextColor,
                            ),
                          )
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlatButton(onPressed: (){},
                              child: Container(

                                height: 40.0,
                                width: 130.0,
                                child: Center(child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:CrossAxisAlignment.center ,

                                  children: [
                                    Text("f ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13.0),),
                                    Text("Connect with Facebook",style: TextStyle(color: Colors.white,fontSize: 10.0),),
                                  ],
                                )),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                  color:Color(0xff334e85),
                                ),
                              )
                          ),
                          FlatButton(onPressed: (){},
                              child: Container(
                                height: 40.0,
                                width: 130.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:CrossAxisAlignment.center ,
                                  children: [
                                    Image(image: AssetImage("images/gg.png"),height:20.0,width: 20.0 ,),
                                    Text("Connect with google",style: TextStyle(color: Colors.black,fontSize: 10.0),),
                                  ],
                                ),

                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                                  color:Colors.white,
                                ),
                              )
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                        child:FlatButton(onPressed: () {

                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen(),));
                          });
                        },child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Don't have an account? ",style: TextStyle(color: Color(0xfff7f7f7),fontSize: 15.0),),
                            Text("sign in",style: TextStyle(color:yellowTextColor,fontSize: 20.0,decoration: TextDecoration.underline ),),

                          ],
                        )),

                    )
                  ],
                ),
              ),

            ],
          ),
        ),

      ),

    );
  }
}
