import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restaurant/Constants/widthandheight.dart';
import 'package:restaurant/Screens/restaurantScreen.dart';
import 'package:restaurant/navBar/order/itemDetails.dart';
import 'constants.dart';


class OfferCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      height:380.0,
      width: 300.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
          color: Colors.white,
          boxShadow:  <BoxShadow>[
            new BoxShadow(
                color: Colors.grey,
                blurRadius: 3.0,
                offset: new Offset(2.0, 2.0),
                spreadRadius: 2

            )
          ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReuseableImage(height: 200,width: getwidth(context),),
          Container(
            padding: EdgeInsets.all(15.0),
            child: InkWell(onTap: (){},
              child: Text("Famous Dave's BabaJons",
                overflow: TextOverflow.ellipsis,maxLines: 1,
                style: firstFontCard,),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text("Vegetrian . Undian . mndsasdasamdn",
              overflow: TextOverflow.ellipsis,maxLines: 1,
              style: secondFontCard,),
          ),
          SizedBox(height: 10.0,),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Color(0xffededed),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.timer,color: Colors.grey[700],size: 15.0,),
                    Text("15-30 min",style: TextStyle(color: Colors.grey[700]),)
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("\$350 ForTwo",style: TextStyle(color: Colors.grey),),
            )
          ],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Container(
                    padding: EdgeInsets.all(3)
                    ,decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    child: Text("OFFER",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                SizedBox(width: 5.0,),
                Text("Use Coupon OSAHAN50"),
              ],
            ),
          )

        ],
      ),

    )
    ;
  }
}

class FeaturedItemsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      height:250.0,
      width: 300.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
          color: Colors.white,
          boxShadow:  <BoxShadow>[
            new BoxShadow(
                color: Colors.grey,
                blurRadius: 3.0,
                offset: new Offset(2.0, 2.0),
                spreadRadius: 2

            )
          ]
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            child: Stack(
                children: [
                  Image(image:AssetImage("images/popular5.png"),fit:BoxFit.cover, ),
                  Padding(
                    padding: const EdgeInsets.only(top:8,left: 8.0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.all(Radius.circular(6.0)),
                            color: Colors.black,

                          ),
                          height: 25,
                          width: 80,
                          alignment: Alignment.center,
                          child: Text("Promoted",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 17.0,
                        child: Icon(Icons.favorite_border,color: Colors.red,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:40.0,right: 8.0),
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.all(Radius.circular(6.0)),
                          color: Colors.green,

                        ),
                        height: 25,
                        width: 100,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star_border,color: Colors.white,),
                            Text("3.1(300+)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  )

                ]),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: InkWell(onTap: (){},
              child: Text("Famous Dave's BabaJons",overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text("Vegetrian . Undian . mndsasdasamdn",overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(color: Colors.grey,fontSize: 15.0),),
          ),
          SizedBox(height: 10.0,),
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: Color(0xffededed),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.timer,color: Colors.grey[700],size: 15.0,),
                    Text("15-30 min",style: TextStyle(color: Colors.grey[700]),)
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("\$350 ForTwo",style: TextStyle(color: Colors.grey),),
            )
          ],),


        ],
      ),

    )
    ;
  }
}
class Rating extends StatelessWidget {
  const Rating({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        children: [
          Expanded(flex: 1,child: Text("5 Star")),
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              height: 10.0,
              decoration: BoxDecoration(
                  color: hintColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            ),
          ),
          Expanded(flex: 1,child: Text("56 %"))
        ],
      ),
    );
  }
}


class MenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: 150,
      height: 100,
      decoration: BoxDecoration(
          boxShadow:  <BoxShadow>[
            new BoxShadow(
                color: Colors.grey,
                blurRadius: 3.0,
                offset: new Offset(2.0, 2.0),
                spreadRadius: 1

            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage("images/Breakfast.png"),height: 50.0,width: 50.0,),
          SizedBox(height: 10.0,),
          Text("Breakfast",style: TextStyle(color: Colors.grey,fontSize: 15),)
        ],
      ),
    );

  }
}

class ListOfStaredItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StartesTextAndSepartedLine(),
        StaredItemWithAddButton(),
        SeparatedLine(),
        StaredItemWithAddButton(),
        SeparatedLine(),
        StaredItemWithAddButton(),

      ],
    );
  }
}

class DefultTextFiled extends StatelessWidget {
  DefultTextFiled({@required this.lable,@required this.controller,this.isPassword=false,this.passwordFunction,this.suffix});
  String lable;
  TextEditingController controller;
  bool isPassword;
  Function passwordFunction;
  IconData suffix;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffix!=null?IconButton(icon: Icon(suffix,color: yellowTextColor,),onPressed:passwordFunction,):null,
        labelText: "$lable",
         labelStyle: TextStyle(color: yellowTextColor,fontWeight: FontWeight.w600,fontSize: 17),
        hintText: "Enter $lable",
        hintStyle:TextStyle(color: hintColor) ,
      ) ,
    );
  }
}

class SeparatedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[400],
      height: 1.0,
    );
  }
}

class StaredItemWithAddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin:EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/starter1.jpg"),
              radius: 25,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Chicken Tikka Sub",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                SizedBox(height: 7.0,),
                Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit.",overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(fontSize: 15.0,color: hintTextFont),),
                SizedBox(height: 3.0,),
                Text("250 EGP",style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDtails(),));
            },
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color:  yellowTextColor,
                  borderRadius:BorderRadius.all(Radius.circular(7))
              ),
              child: Text("ADD",style: TextStyle(color: Colors.white)),),
          ),
        ],
      ),
    );
  }
}

class StartesTextAndSepartedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(thickness: 0.5,color: Colors.grey,),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Starters",style: TextStyle(fontSize: 25.0,color: Colors.black,fontWeight: FontWeight.bold),),
              Text(" 3 ITEMS",style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),
        Divider(thickness: 0.5,color: Colors.grey,)
      ],
    );
  }
}

class BackArrow extends StatelessWidget {
  BackArrow({this.color=yellowTextColor,this.ontap});
  Color color;
  Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios,color: color,size: 15.0,),
          Text(" Back",style: TextStyle(color: color,fontSize: 18.0,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}


class DefultButtom extends StatelessWidget {
  DefultButtom({@required this.buttomText,@required this.ontap,this.color=yellowTextColor,this.width=3,this.textColor=Colors.black,this.fontSize=15.0});
  Function ontap;
  String buttomText;
  Color color;
  int width;
  Color textColor;
  double fontSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:ontap ,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          width: getwidth(context)/width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color:color,
          ),
          child: Center(child: Text(buttomText,style: TextStyle(color: textColor,fontWeight: FontWeight.bold,fontSize:fontSize),)),
        )
    );

  }
}

class ConnectionButtom extends StatelessWidget {
  ConnectionButtom({@required this.buttomText,@required this.ontap,@required this.background,@required this.textColor,@required this.isFacebook=true});
  Function ontap=(){};
  String buttomText;
  Color background;
  Color textColor;
  bool isFacebook;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
          onTap:ontap,
          child: Container(
            padding: EdgeInsets.all( 12.0),
            child: Center(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isFacebook==true?Text("f ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13.0),):
                Image(image: AssetImage("images/gg.png"),height: 17.0,),
                Text(buttomText,style: TextStyle(color: textColor,fontSize: 11.0),),
              ],
            )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(7.0)),
              color:background,
            ),
          )
      ),
    );

  }
}

class BottomText extends StatelessWidget {

  BottomText({@required this.text1,@required this.text2,@required this.ontap});
  Function ontap;
  String text1;
  String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      color: Colors.grey[ 600],
      child: InkWell(onTap: ontap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text1,style: TextStyle(color: Color(0xfff7f7f7),fontSize: 15.0),),
              Text(text2,style: TextStyle(color:yellowTextColor,fontSize: 20.0,decoration: TextDecoration.underline ),),

            ],
          )),
    );

  }
}

class ImageWithStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow:  <BoxShadow>[
            new BoxShadow(
                color: Colors.grey,
                blurRadius: 3.0,
                offset: new Offset(2.0, 2.0),
                spreadRadius: 2

            )
          ]
      ),
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ReuseableImage(height: 150  ,width: getwidth(context)*0.6,),
          Container(
             padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("The osahan Restaurant",style: firstFontCard,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5.0,),
                Text("• North • Hamburgers",style: secondFontCard,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    StarADS(background: Colors.yellow[600],padLeft: 0.0,),
                    StarADS(background: Colors.yellow[600],padLeft: 3.0,),
                    StarADS(background: Colors.yellow[600],padLeft: 3.0),
                    StarADS(background: Colors.yellow[600],padLeft: 3.0),
                    StarADS(background: Colors.black,padLeft: 3.0),
                  ],
                ),
                SizedBox(height: 20.0,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color:Colors.green,
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                      child: Text("OFFER",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,) ,),
                    ),
                    Text(" 65% OSAHAN50"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
class FiveStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Row(children: [
      Icon(Icons.star_border,color: yellowTextColor,),
      Icon(Icons.star_border,color: yellowTextColor,),
      Icon(Icons.star_border,color: yellowTextColor,),
      Icon(Icons.star_border,color: yellowTextColor,),
      Icon(Icons.star_border),
    ],);
  }
}

class StarADS extends StatelessWidget {
  StarADS({this.background,this.padLeft});
  Color background;
  double padLeft;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:padLeft),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color:background ,
        ),
        child: Icon(Icons.star_border,color: Colors.white,size: 17,),
      ),
    );
  }
}


class SaledItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantScreen(),));
      },
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow:<BoxShadow> [
            BoxShadow(
              offset: Offset(2.0, 2.0),
              color: Colors.grey,
              spreadRadius: 2,
              blurRadius: 3.0

            )
          ]
        ),
        child: Row(
          children: [
            ReuseableImage(height: 150,width: getwidth(context)*0.4,),
            Container(
              width: getwidth(context)*0.5,
              padding: EdgeInsets.all(10),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("The osahan RestaurantRestaurantRestaurant",
                      style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,maxLines: 1,),
                    SizedBox(height: 7.0,),
                    Text("North • Hamburgers • Pure veg",style: TextStyle(fontSize: 15.0),
                      overflow: TextOverflow.ellipsis,maxLines: 2,),
                    SizedBox(height: 15.0,),
                    Container(
                      alignment: Alignment.center,
                      width:90,
                      color: Color(0xffededed),
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Icon(Icons.timer,color: Colors.grey[700],size: 15.0,),
                          Text("15-30 min",style: TextStyle(color: Colors.grey[700]),)
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              color:Colors.green,
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Text("OFFER",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,) ,),
                        ),
                        Expanded(child: Text(" 65% OSAHAN50",overflow: TextOverflow.ellipsis,maxLines: 1,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ReuseableImage extends StatelessWidget {
  ReuseableImage({@required this.height,@required this.width});
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Stack(
          children: [
            Image(image:AssetImage("images/popular5.png"),fit:BoxFit.cover,height: 200,width:width, ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.topLeft,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.all(Radius.circular(6.0)),
                    color: Colors.black,
                  ),
                  height: 25,
                  width: 80,
                  alignment: Alignment.center,
                  child: Text("Promoted",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 17.0,
                child: Icon(Icons.favorite_border,color: Colors.red,),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(6.0)),
                  color: Colors.green,
                ),

                height: 25,
                width: 100,
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star_border,color: Colors.white,),
                    Text("3.1(300+)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            )
          ]),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow:  <BoxShadow>[
            new BoxShadow(
                color: Colors.grey,
                blurRadius: 3.0,
                offset: new Offset(2.0, 2.0),
                spreadRadius: 2

            )
          ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ReuseableImage(height: 150  ,width: getwidth(context)*0.5,),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("The osahan Restaurant",style: firstFontCard,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5.0,),
                  Text("• North • Hamburgers",style: secondFontCard,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10.0,),
                  Row(children: [
                    Container(
                      color: Color(0xffededed),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.timer,color: Colors.grey[700],size: 15.0,),
                          Text("15-30 min",style: TextStyle(color: Colors.grey[700]),)
                        ],
                      ),
                    ),
                  ],),
                  SizedBox(height: 20.0,),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            color:Colors.green,
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Text("OFFER",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold ,) ,),
                      ),
                      Expanded(child: Text(" 65% OSAHAN50", overflow: TextOverflow.ellipsis,)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class ExpansionWidget extends StatelessWidget {
  ExpansionWidget({this.widget,this.header,this.icon});
  Widget widget;
  String header;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
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
      margin: EdgeInsets.only(top: 10.0),
      child: ExpansionTile(
        title: Row(
          children: [
            Icon(icon,color: Colors.green,),
            SizedBox(width: 10.0,),
            Expanded(
              child: Text(header,style: TextStyle(color: Colors.green),),
            )
          ],
        ),
        children: [
          Column(
            children: [
              widget

            ],
          )
        ],
      ),
    );
  }
}
