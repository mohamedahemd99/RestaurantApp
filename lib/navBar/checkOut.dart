import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/navBar/profile.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  bool checkBox=false;
  bool _home;
  String banking="Bank";
  bool firstBank=false;
  bool secondBank=false;
  bool thirdBank=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:Container(height: 60.0,child: DefultButtom(ontap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()));
      },buttomText: "PAY \$1329 ->",width: 1,color: Colors.green,)) ,
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor,
        title:BackArrow(color: backgroundColor,ontap: (){},),
          actions: [
            IconButton(icon: Icon(Icons.menu,size: 30.0,color: backgroundColor,), onPressed: (){})
        ],
      ),
      body:SingleChildScrollView(
        physics:AlwaysScrollableScrollPhysics() ,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              color: primaryColor,
              width: getwidth(context),
              height: 80.0,
              child: Text("Checkout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0,color: backgroundColor),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                   Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          color: backgroundColor2,
                          boxShadow:  <BoxShadow>[
                            new BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3.0,
                                offset: new Offset(2.0, 2.0),
                                spreadRadius: 2

                            )
                          ]
                      ),
                      padding: EdgeInsets.all(15.0),
                      width: getwidth(context),
                      margin: EdgeInsets.only(top: 30.0,bottom: 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("DELIVERY ADDRESS",style: firstFontCard,),
                          SizedBox(height: 10.0,),
                          InkWell(
                            onTap:(){
                              setState(() {

                              });
                              _home=true;
                            } ,
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: backgroundColor2,
                                  border:Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.home),
                                  SizedBox(width: 5.0,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Home",style: firstFontCard,),
                                        SizedBox(height: 5.0,),
                                        Text("4904 Goldner Ranch, Jawaddi kalan, Jawaddi kalan, ",
                                          style: secondFontCard,
                                          overflow:TextOverflow.ellipsis,
                                          maxLines: 1 ,
                                        ),
                                      ],
                                    ),
                                  ),
                                  _home==true?Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.lightBlueAccent

                                      ),
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 10,
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: backgroundColor,

                                      ),
                                    ),
                                  ): Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.grey

                                      ),
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: backgroundColor,
                                      radius: 10,
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: backgroundColor,

                                      ),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          InkWell(
                            onTap: (){
                              setState(() {

                              });
                              _home=false;
                            },
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: backgroundColor,
                                  border:Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.work),
                                  SizedBox(width: 5.0,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Work",style: firstFontCard,),
                                        SizedBox(height: 5.0,),
                                        Text("4904 Goldner Ranch, Jawaddi kalan, Jawaddi kalan, ",
                                          style: secondFontCard,
                                          overflow:TextOverflow.ellipsis,
                                          maxLines: 1 ,
                                        ),
                                      ],
                                    ),
                                  ),
                                  _home==false?Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.lightBlueAccent

                                      ),
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      radius: 10,
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: backgroundColor,

                                      ),
                                    ),
                                  ): Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.grey

                                      ),
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: backgroundColor,
                                      radius: 10,
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: backgroundColor,

                                      ),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 7.0,),
                          DefultButtom(buttomText: "ADD NEW ADDRESS", ontap: (){},color: primaryColor,width: 1,),
                        ],
                      ),
                    ),
                   ExpansionWidget(
                     header:"Credit/Debit Card",icon: Icons.credit_card,widget: Container(
                       padding: EdgeInsets.all(15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Add new card",style: firstFontCard,),
                           Text("WE ACCEPT ( Master Card / Visa Card / Rupay )"),
                           SizedBox(height: 10.0,),
                           Padding(
                             padding: const EdgeInsets.symmetric(vertical: 10.0),
                             child: Text("Card number",style: TextStyle(fontWeight: FontWeight.bold),),
                           ),
                           Row(
                             children: [
                               Expanded(
                                 child: Container(
                                   height: 60.0,
                                   child: TextField(
                                     decoration: InputDecoration(
                                       hintText: "Card Number",
                                       enabledBorder: OutlineInputBorder(
                                         borderRadius: BorderRadius.circular(5),
                                         borderSide: BorderSide(color: backgroundColor,width: 3)
                                       ),
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(color: primaryColor,width: 3.0)
                                       ),

                                     ),
                                   ),
                                 ),
                               ),
                               Container(
                                 height: 60,
                                 decoration: BoxDecoration(
                                   border: Border.all(color: backgroundColor,width: 3.0)
                                 ),
                                 child: IconButton(icon: Icon(Icons.credit_card), onPressed: (){})),
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.symmetric(vertical: 10.0),
                             child: Text("Valid through(MM/YY)",style: TextStyle(fontWeight: FontWeight.bold),),
                           ),
                           Row(
                             children: [
                               Expanded(
                                 child: Container(
                                   height: 60.0,
                                   child: TextField(
                                     decoration: InputDecoration(
                                       hintText: "Enter Valid through(MM/YY)",
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(color: backgroundColor,width: 3)
                                       ),
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(color: primaryColor,width: 3.0)
                                       ),

                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.symmetric(vertical: 10.0),
                             child: Text("CVV",style: TextStyle(fontWeight: FontWeight.bold),),
                           ),
                           Row(
                             children: [
                               Expanded(
                                 child: Container(
                                   height: 60.0,
                                   child: TextField(
                                     decoration: InputDecoration(
                                       hintText: "Enter CVV Number",
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(color: backgroundColor,width: 3)
                                       ),
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(color: primaryColor,width: 3.0)
                                       ),

                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.symmetric(vertical: 10.0),
                             child: Text("Name on card",style: TextStyle(fontWeight: FontWeight.bold),),
                           ),
                           Row(
                             children: [
                               Expanded(
                                 child: Container(
                                   height: 60.0,
                                   child: TextField(
                                     decoration: InputDecoration(
                                       hintText: "Enter Card number",
                                       enabledBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(color: backgroundColor,width: 3)
                                       ),
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: BorderRadius.circular(5),
                                           borderSide: BorderSide(color: primaryColor,width: 3.0)
                                       ),

                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           Row(
                             children: [
                               Checkbox(
                                 activeColor: primaryColor,
                                 value: checkBox,
                                   onChanged:(bool value) {
                                     setState(() {
                                       checkBox=value;
                                     });
                                   },
                               ),
                               Expanded(
                                 child: Text("Securely save this card for a faster checkout next time.",
                                   style: secondFontCard,overflow:TextOverflow.ellipsis,maxLines: 2,),
                               )

                             ],
                           )

                         ],
                       ),
                     ), ),
                   ExpansionWidget(
                     widget: Padding(
                       padding: const EdgeInsets.all(15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Divider(color:  backgroundColor,height: 2.0,thickness: 4.0,),
                           SizedBox(height: 15.0,),

                           Row(
                             children: [
                               Expanded(
                                 child: InkWell(
                                   onTap: (){
                                     firstBank=true;
                                     secondBank=false;
                                     thirdBank=false;
                                     setState(() {

                                     });

                                   },
                                   child: Container(
                                     padding: EdgeInsets.all(10.0),
                                     decoration: BoxDecoration(
                                       color: firstBank==true?Colors.grey:backgroundColor2,
                                       borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),topLeft:Radius.circular(10)),
                                       border: Border.all(color:  Colors.grey,width: 2.0)
                                     ),
                                     child: Center(child: Text("HDFC")),
                                   ),
                                 ),
                               ),
                               Expanded(
                                 child: InkWell(
                                   onTap: (){
                                     firstBank=false;
                                     secondBank=true;
                                     thirdBank=false;
                                     setState(() {

                                     });
                                   },
                                   child: Container(
                                     padding: EdgeInsets.all(10.0),
                                     decoration: BoxDecoration(
                                         color: secondBank==true?Colors.grey:backgroundColor2,

                                         border: Border.all(color: Colors.grey,width: 2.0)
                                     ),
                                     child: Center(child: Text("ICICI")),
                                   ),
                                 ),
                               ),
                               Expanded(
                                 child: InkWell(
                                   onTap: (){

                                      firstBank=false;
                                      secondBank=false;
                                      thirdBank=true;
                                      setState(() {

                                      });
                                   },
                                   child: Container(
                                     padding: EdgeInsets.all(10.0),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.only(bottomRight:Radius.circular(10),topRight:Radius.circular(10)),
                                         color: thirdBank==true?Colors.grey:backgroundColor2,

                                         border: Border.all(color:  Colors.grey,width: 2.0)
                                     ),
                                     child: Center(child: Text("AXIS")),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           SizedBox(height: 15.0,),
                           Divider(color:  backgroundColor,height: 2.0,thickness: 4.0,),
                           SizedBox(height: 15.0,),
                           Text("Select Bank"),
                           SizedBox(height: 10.0,),

                           Container(
                             padding: EdgeInsets.all(10.0),
                             decoration:BoxDecoration(
                               border: Border.all(color: backgroundColor,width: 2.0),
                               borderRadius: BorderRadius.circular(5.0)
                             ) ,
                             width: getwidth(context),
                             child: DropdownButton<String>(
                               isExpanded:true,
                               isDense: true,
                               value: banking,
                                 items: [
                                   DropdownMenuItem(
                                     child: Text("Bank"),
                                     value: 'Bank',
                                   ),
                                   DropdownMenuItem(
                                     child: Text("KOTAK"),
                                     value: 'KOTAK',
                                   ),
                                   DropdownMenuItem(
                                     child: Text("SBI"),
                                     value: 'SBI',
                                   ),
                                   DropdownMenuItem(
                                     child: Text("UCO"),
                                     value: 'UCO',
                                   ),
                                 ],
                                 onChanged:(value) {
                                   setState(() {
                                     banking=value;
                                   });
                                 },),
                           )

                         ],
                       ),
                     ),
                     icon: Icons.settings_input_antenna,header:"Net Banking" ,),
                    ExpansionWidget(header: "Cash on Delivery",icon: (Icons.attach_money),
                      widget: Container(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cash",style: firstFontCard,),
                            SizedBox(height: 10.0,),
                            Text("Please keep exact change handy to help us serve you better",style: secondFontCard,)
                          ],
                        ),
                      ),),
                    SizedBox(height: 100.0,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}

