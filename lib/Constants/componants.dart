import 'package:flutter/material.dart';
import 'package:restaurant/Constants/widthandheight.dart';
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
  @override
  Widget build(BuildContext context) {
    return Column(
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
            onTap: (){},
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
        Container(
          width: double.infinity,
          color: Colors.grey[400],
          height: 1.0,
        ),
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
        Container(
          width: double.infinity,
          color: Colors.grey[400],
          height: 1.0,
        ),
      ],
    );
  }
}

class BackArrow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios,color: yellowTextColor,size: 15.0,),
          Text(" Back",style: TextStyle(color: yellowTextColor,fontSize: 18.0,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}



class DefultButtom extends StatelessWidget {
  DefultButtom({@required this.buttomText,@required this.ontap});
  Function ontap;
  String buttomText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap:ontap ,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          width: getwidth(context)/3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color:yellowTextColor,
          ),
          child: Center(child: Text(buttomText,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)),
        )
    );

  }
}

class ConnectionButtom extends StatelessWidget {
  ConnectionButtom({@required this.buttomText,@required this.ontap,@required this.background,@required this.textColor,@required this.isFacebook});
  Function ontap=(){};
  String buttomText;
  Color background;
  Color textColor;
  bool isFacebook=true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
          onTap:ontap,
          child: Container(
            height: 50.0,
            width: getwidth(context)/3,
            padding: EdgeInsets.symmetric(vertical: 12.0),
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
