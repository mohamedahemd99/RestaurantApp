import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'signUp.dart';
import '../Constants/constants.dart';
import '../user_model.dart';
import 'package:http/http.dart' as http;
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailControl=TextEditingController();
  final TextEditingController passwordControl=TextEditingController();
  UserModel _user;

  Future<UserModel> Login( String name, String password) async{
    final String apiURL = "http://yrnova.online/afcrm/index.php?action=login&phone="+name+"&password="+password;
    final response =await http.get(apiURL,);
      final String responseString = response.body;
      print(responseString);
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image:AssetImage('images/login.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
          ),
        ),
        child:Container(
          margin: EdgeInsets.all(15.0),

          child: ListView(
            children: [
              Column(
                mainAxisAlignment:MainAxisAlignment.start ,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 40.0,top: 20.0),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios,color: yellowTextColor,),
                          Text("Back",style: TextStyle(color: yellowTextColor),),
                        ],
                      ),
                    ),
                  ),
                  Text("Welcome Back",style: TextStyle(fontSize:25.0,color: primaryColor),),
                  Text("Sign in to continue",style: TextStyle(fontSize:15.0,color: Color(0xfff4deb0))),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0,right: 40.0,top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Email",style:lableTextFiledStyle ),
                    TextField(
                      controller: emailControl,
                      decoration: InputDecoration(
                       hintText: "Enter Email",
                        hintStyle:TextStyle(color: hintColor) ,
                        ) ,
                      ),
                    SizedBox(height: 20.0,),
                    Text("Password",style:lableTextFiledStyle),
                    TextField(
                      controller: passwordControl,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                        hintStyle:TextStyle(color: hintColor) ,

                      ),
                    ),
                  ],
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(onPressed: ()async {
                    final String name=emailControl.text ;
                    final String password=passwordControl.text ;
                    Login(name, password);
                   setState(() {
                      //Navigator.push(context,MaterialPageRoute(builder: (context) => Home(),));
                   });
                  },
                      child: Container(
                        margin: EdgeInsets.all(20.0),
                        height: 50.0,
                        width: 100.0,
                        child: Center(child: Text("SIGN IN",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          color:yellowTextColor,
                        ),
                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(onPressed: (){},
                          child: Container(

                            height: 50.0,
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
                            height: 50.0,
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
                  )
                ],
              ),
              FlatButton(onPressed:() {} ,child: Text("Forgot Password?",style: TextStyle(color: Color(0xfff7f7f7),),)),
              SizedBox(height: 80.0,),

              FlatButton(onPressed: () {

                setState(() {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp(),));
                });
              },child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",style: TextStyle(color: Color(0xfff7f7f7),fontSize: 15.0),),
                  Text("signup",style: TextStyle(color:yellowTextColor,fontSize: 20.0,decoration: TextDecoration.underline ),),

                ],
              )),

            ],
          ),
        ),

      ),
    );
  }
}
