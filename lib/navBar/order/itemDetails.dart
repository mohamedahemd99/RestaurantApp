import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Constants/componants.dart';
import 'package:restaurant/Constants/constants.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/Screens/restaurantScreen.dart';

class ItemDtails extends StatefulWidget {
  @override
  _ItemDtailsState createState() => _ItemDtailsState();
}

class _ItemDtailsState extends State<ItemDtails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:Container(height: 60.0,child: DefultButtom(ontap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context) => RestaurantScreen()));
      },buttomText: "Add to order",width: 1,color: yellowTextColor,fontSize: 20,)) ,

      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: getheight(context)*0.4,
                  width: getwidth(context),
                  child:Image(image: AssetImage("images/sales2.png"),fit: BoxFit.cover,),
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("California Roll with Black Sesame",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),overflow:TextOverflow.ellipsis,maxLines: 2,),
                      SizedBox(height: 20.0,),
                      Text("DESCRIPTION",style: firstFontCard,overflow:TextOverflow.ellipsis,maxLines: 2,),
                      SizedBox(height: 10.0,),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",style: secondFontCard,overflow:TextOverflow.ellipsis,maxLines: 5,),
                      SizedBox(height: 20.0,),
                      Text("EXTRAS",style: firstFontCard,overflow:TextOverflow.ellipsis,maxLines: 2,),
                      SizedBox(height: 10.0,),

                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(15.0),
                      //     border: Border.all(
                      //         width: 2,
                      //         color: Colors.lightBlueAccent
                      //
                      //     ),
                      //   ),
                      //   child: CircleAvatar(
                      //     backgroundColor: Colors.red,
                      //     radius: 10,
                      //     child: CircleAvatar(
                      //       radius: 4,
                      //       backgroundColor: backgroundColor,
                      //
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: GestureDetector(
                          onTap: (){
                          },
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.grey

                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundColor: backgroundColor,
                                  radius: 8,
                                  child: CircleAvatar(
                                    radius: 4,
                                    backgroundColor: backgroundColor,

                                  ),
                                ),
                              ),
                              Text("  Tuna ",style: firstFontCard,),
                              Text("+\$35.00",style: secondFontCard,),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                      ),
                      Extra(lable: "Noodles",),
                      Divider(
                        thickness: 1.0,
                      ),
                      Extra(lable: "Wasabi",),
                      Divider(
                        thickness: 1.0,
                      ),
                      Extra(lable: "Unagi",),
                      Divider(
                        thickness: 1.0,
                      ),
                      Extra(lable: "Vegetable",),
                      Divider(
                        thickness: 1.0,
                      ),
                      SizedBox(height: 10.0,),
                      Text("QUANTITY",style: firstFontCard,overflow:TextOverflow.ellipsis,maxLines: 2,),
                      SizedBox(height: 10.0,),
                      Text("1 Item",style: secondFontCard,)
                    ],
                  ),
                ),
                SizedBox(height: 60.0,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Extra extends StatelessWidget {
  Extra({@required this.lable});
  String lable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: (){
        },
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                    width: 2,
                    color: Colors.grey

                ),
              ),
              child: CircleAvatar(
                backgroundColor: backgroundColor,
                radius: 8,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: backgroundColor,

                ),
              ),
            ),
            Text("  $lable ",style: firstFontCard,),
            Text("+\$35.00",style: secondFontCard,),
          ],
        ),
      ),
    );
  }
}
