import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/Screens/home.dart';
import 'signUp.dart';
import '../Constants/constants.dart';
// import '../user_model.dart';
// import 'package:http/http.dart' as http;
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailControl=TextEditingController();
  final TextEditingController passwordControl=TextEditingController();
  bool isPassword=true;
  // UserModel _user;

  // Future<UserModel> Login( String name, String password) async{
  //   final String apiURL = "http://yrnova.online/afcrm/index.php?action=login&phone="+name+"&password="+password;
  //   final response =await http.get(apiURL,);
  //     final String responseString = response.body;
  //     print(responseString);
  // }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('images/login.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
            ),
          ),
          child:Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:10.0,bottom: 40.0),
                  child: BackArrow(ontap: (){Navigator.pop(context);},),
                ),
                Column(
                  mainAxisAlignment:MainAxisAlignment.start ,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back",style: TextStyle(fontSize:35.0,color: primaryColor,fontWeight: FontWeight.bold),),
                    Text("Sign in to continue",style: TextStyle(fontSize:15.0,color: Color(0xfff4deb0))),
                  ],
                ),

                SizedBox(height: 30.0,),
                DefultTextFiled(lable: "User Name",controller: emailControl,),
                SizedBox(height: 30.0,),
                DefultTextFiled(controller: passwordControl,
                  lable: "Password",
                  isPassword: isPassword,
                  passwordFunction:  (){
                   setState(() {
                     isPassword=!isPassword;
                   });},
                  suffix: isPassword?Icons.visibility:Icons.visibility_off,
                ),

                //Buttons
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: DefultButtom(
                        buttomText:"SIGN IN" ,
                        ontap: (){
                            setState(() {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => Home(null),));
                             });
                        },
                      ),
                    ),
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
                    InkWell(onTap:() {} ,child: Text("Forgot Password?",style: TextStyle(color: Color(0xfff7f7f7),),)),

                  ],
                ),



              ],
            ),
          ),

      ),
        ),
        bottomSheet:BottomText(text1: "Don't have an account?", text2: " signup", ontap: (){
          setState(() {
            Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp(),));

          });

        }),


    );
  }
}

