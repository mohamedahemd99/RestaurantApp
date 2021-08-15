import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/Screens/loginScreen.dart';
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
      body: SafeArea(
        child: Container(
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
            padding: EdgeInsets.symmetric(horizontal: 15.0),

            child: ListView(
              children: [
                Column(
                  children: [
                    Column(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only( bottom: 20.0,top: 10.0),
                          child:BackArrow()
                        ),
                        Text("Creat Your Account",style: TextStyle(fontSize:25.0,color: Color(0xffabd2b7)),),
                        Text("Sign up to continue",style: TextStyle(fontSize:15.0,color: Color(0xfff4deb0))),
                      ],
                    ),
                    //Form
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [

                            DefultTextFiled(lable: "First Name",),
                            SizedBox(height: 15.0,),
                            DefultTextFiled(lable: "Second Name",),
                            SizedBox(height: 15.0,),
                            DefultTextFiled(lable: "Email",),
                            SizedBox(height: 15.0,),
                            DefultTextFiled(lable: "Password",),
                            SizedBox(height: 15.0,),

                            DefultTextFiled(lable: "Confirm Password",),
                          ],
                        ),
                      ),
                    ),
                    //Buttons
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 15.0,),

                        DefultButtom(
                          buttomText:"SIGN UP" ,
                          ontap: (){
                            setState(() {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Home(null),));
                            });
                          },
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             ConnectionButtom(
                               buttomText: "Connect with Facebook",
                               ontap: (){},
                               background:Color(0xff334e85),
                               textColor: Colors.white,
                               isFacebook: true,
                             ),

                             ConnectionButtom(
                               buttomText: "Connect with google",
                               ontap: (){},
                               background:Colors.white,
                               textColor: Colors.black,
                               isFacebook: false,
                             ),

                           ],
                         ),

                      ],
                    ),
                    SizedBox(height: 50.0,)

                  ],
                ),
              ],
            ),
          ),

        ),
      ),
      bottomSheet:BottomText(text1: "Already an account?", text2:" sign in", ontap:(){
        Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen(),));
      }),


    );
  }
}

