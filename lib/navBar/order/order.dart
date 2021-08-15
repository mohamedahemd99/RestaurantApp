import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'file:///C:/Users/Rossia/AndroidStudioProjects/ui_project1/RestaurantApp/lib/navBar/order/checkOut.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int counter=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:Container(height: 60.0,child: DefultButtom(ontap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => CheckOut()));
      },buttomText: "PAY \$3140 ->",width: 1,color: Colors.green,textColor: Colors.white,fontSize: 25,)) ,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
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
                      Expanded(child: Text("Order",
                        style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),)),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Close",style: TextStyle(color: yellowTextColor,fontSize: 25.0,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                    ],
                  ) ,
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                            color: backgroundColor2,
                            boxShadow:<BoxShadow> [
                              BoxShadow(
                                  offset: Offset(2.0, 2.0),
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 3.0

                              )
                            ]
                        ),
                        margin: EdgeInsets.only(top: 60.0,bottom: 15),
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/popular3.png"),
                                radius: 30.0,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Spice Hut Indian Restaurant",style: firstFontCard,overflow: TextOverflow.ellipsis,),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.grey,),
                                      Expanded(child: Text(" 2036 2ND AVE, NEW YORK, NY 10029",style: secondFontCard,overflow: TextOverflow.ellipsis,))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: backgroundColor2,
                            boxShadow:<BoxShadow> [
                              BoxShadow(
                                  offset: Offset(2.0, 2.0),
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 3.0
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green,width: 2),
                                        borderRadius: BorderRadius.circular(3)
                                    ),
                                    child: Center(
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Text("Chicken Tikka Sub",style:firstFontCard,)),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          counter--;
                                          setState(() {

                                          });
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey,width: 2)
                                          ),
                                          child: Center(child: Text("-",style: firstFontCard,)),
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[700],
                                            border: Border.all(color:  Colors.grey[700],width:1)
                                        ),
                                        child: Center(child: Text("${counter <0?counter=0:counter}",style: TextStyle(color: backgroundColor2,fontSize: 18),)),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          counter++;

                                          setState(() {

                                          });
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey,width: 2)
                                          ),
                                          child: Center(child: Text("+",style: firstFontCard,)),
                                        ),
                                      )

                                    ],
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 7),
                                      child: Text("\$628",style: secondFontCard,))

                                ],
                              ),
                            ),
                            Divider(thickness: 2.0),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green,width: 2),
                                        borderRadius: BorderRadius.circular(3)
                                    ),
                                    child: Center(
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Text("Chicken Tikka Sub",style:firstFontCard,)),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          counter--;
                                          setState(() {

                                          });
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey,width: 2)
                                          ),
                                          child: Center(child: Text("-",style: firstFontCard,)),
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[700],
                                            border: Border.all(color:  Colors.grey[700],width:1)
                                        ),
                                        child: Center(child: Text("${counter <0?counter=0:counter}",style: TextStyle(color: backgroundColor2,fontSize: 18),)),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          counter++;

                                          setState(() {

                                          });
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey,width: 2)
                                          ),
                                          child: Center(child: Text("+",style: firstFontCard,)),
                                        ),
                                      )

                                    ],
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 7),
                                      child: Text("\$628",style: secondFontCard,))

                                ],
                              ),
                            ),
                            Divider(thickness: 2.0),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green,width: 2),
                                        borderRadius: BorderRadius.circular(3)
                                    ),
                                    child: Center(
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Text("Chicken Tikka Sub",style:firstFontCard,)),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          counter--;
                                          setState(() {

                                          });
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey,width: 2)
                                          ),
                                          child: Center(child: Text("-",style: firstFontCard,)),
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[700],
                                            border: Border.all(color:  Colors.grey[700],width:1)
                                        ),
                                        child: Center(child: Text("${counter <0?counter=0:counter}",style: TextStyle(color: backgroundColor2,fontSize: 18),)),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          counter++;

                                          setState(() {

                                          });
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey,width: 2)
                                          ),
                                          child: Center(child: Text("+",style: firstFontCard,)),
                                        ),
                                      )

                                    ],
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 7),
                                      child: Text("\$628",style: secondFontCard,))

                                ],
                              ),
                            ),
                            Divider(thickness: 2.0),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 6),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green,width: 2),
                                        borderRadius: BorderRadius.circular(3)
                                    ),
                                    child: Center(
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Text("Chicken Tikka Sub",style:firstFontCard,)),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          counter--;
                                          setState(() {

                                          });
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey,width: 2)
                                          ),
                                          child: Center(child: Text("-",style: firstFontCard,)),
                                        ),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[700],
                                            border: Border.all(color:  Colors.grey[700],width:1)
                                        ),
                                        child: Center(child: Text("${counter <0?counter=0:counter}",style: TextStyle(color: backgroundColor2,fontSize: 18),)),
                                      ),
                                      InkWell(
                                        onTap: (){
                                          counter++;

                                          setState(() {

                                          });
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.grey,width: 2)
                                          ),
                                          child: Center(child: Text("+",style: firstFontCard,)),
                                        ),
                                      )

                                    ],
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 7),
                                      child: Text("\$628",style: secondFontCard,))

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: backgroundColor2,
                            boxShadow:<BoxShadow> [
                              BoxShadow(
                                  offset: Offset(2.0, 2.0),
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 3.0
                              )
                            ]
                        ),
                        child: Column(

                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child:TextField(
                                    decoration: InputDecoration(
                                      enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(color: backgroundColor,width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(color: backgroundColor,width: 2),
                                      ),
                                      hintText: "Enter Promo code",
                                      hintStyle: secondFontCard,
                                    ),
                                  )
                                  ),
                                Expanded(flex: 1,child: Container(margin:EdgeInsets.only(left: 5),height: 60,child: DefultButtom(buttomText: "%APPLY", ontap:(){},color: yellowTextColor,)))
                              ],
                            ),
                            SizedBox(height: 10.0,),
                            Row(
                              children: [
                                Container(
                                  height: 60.0,
                                  width: 50,
                                  color: Colors.grey,
                                  child: Icon(Icons.message),
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      enabledBorder:OutlineInputBorder(
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5)),
                                        borderSide: BorderSide(color: backgroundColor,width: 2),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),topRight: Radius.circular(5)),
                                        borderSide: BorderSide(color: backgroundColor,width: 3),
                                      ),
                                      hintText: "Any suggestions? We will pass it on....",
                                      hintStyle: secondFontCard,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.all(15),
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: backgroundColor2,
                            boxShadow:<BoxShadow> [
                              BoxShadow(
                                  offset: Offset(2.0, 2.0),
                                  color: Colors.grey,
                                  spreadRadius: 2,
                                  blurRadius: 3.0
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(child: Text("Item Total",style: secondFontCard,)),
                                Text("\$3140",style: secondFontCard,),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(child: Text("Restaurant Charges",style: secondFontCard,)),
                                Text("\62.8",style: secondFontCard,),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(child: Text("Delivery Fee",style: secondFontCard,)),
                                Text("\$10",style: secondFontCard,),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(child: Text("Total Discount",style: TextStyle(color: Colors.green,fontSize: 15),)),
                                Text("\$3140",style: TextStyle(color: Colors.green,fontSize: 15),),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Divider(
                              thickness: 2.0,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(child: Text("TO PAY",style: firstFontCard,)),
                                Text("\$3140",style: firstFontCard,),
                              ],
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 60,),


                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
