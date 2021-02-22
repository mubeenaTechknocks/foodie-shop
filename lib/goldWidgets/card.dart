import 'package:flutter/material.dart';
import 'package:foodieshop/goldPages/shopEdit.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';
import 'package:foodieshop/goldWidgets/imagecard.dart';
import 'package:foodieshop/goldWidgets/switch.dart';

class ShopCard extends StatefulWidget {
  final String hotelname;
  final String location;
  final String mobile;
  final Function() onPressed;

  const ShopCard(
      {Key key,
      this.hotelname = '',
      this.location = '',
      this.mobile = '',
      this.onPressed})
      : super(key: key);

  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return FlatButton(
      onPressed: widget.onPressed,
      child: Card(
        color: themedimbalck,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20)),
        child: Container(
          // height: 100,
          width: double.maxFinite,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),

                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    image: DecorationImage(
                        image: AssetImage(
                          'images/Chicken65.jpg',
                        ),
                        fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width*.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.hotelname,
                              style: TextStyle(
                                  color: themewhite,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800)),
                          SwitchAvailability(),
                        ],
                      ),
                    ),
                    Text(widget.location,
                        style: TextStyle(
                          color: themewhite,
                          fontSize: 14,
                        ))
                  ],
                ),
              )
            ],
          ),
          // child: Stack(
          //   children:[ ImageCard(image: 'images/Chicken65.jpg',),

          //       Positioned(
          //       left: width*0.25,top:height*0.02,
          //       child: Text(widget.hotelname,style:TextStyle(color: themewhite,fontSize: 22,fontWeight: FontWeight.w800))
          //       ),

          //       Positioned(
          //       left: width*0.25,top: height*0.06,
          //       child: Text(widget.location,style:TextStyle(color: themewhite,fontSize: 14,))
          //       ),

          //       Positioned(
          //       left: width*0.25,top: height*0.08,
          //       child: Text(widget.mobile,style:TextStyle(color: themewhite,fontSize: 14,))
          //       ),

          //       // Positioned(
          //       // left: width*0.7,top:height*0.001,
          //       // child:IconButton(icon: Image.asset('images/edit.png',width:35,height: 35,),
          //       // onPressed: (){
          //       //    Navigator.push(
          //       //         context,
          //       //         MaterialPageRoute(builder: (context) {
          //       //           return ShopEdit();
          //       //         }),
          //       //       );
          //       // },
          //       // splashRadius: 1,)
          //       // ),

          //       Positioned(
          //       // left: width*0.49,top:height*0.063,
          //       left: width*0.58,top:height*0.001,
          //       child: SwitchAvailability(),
          //       ),

          //   ]
          // ),
        ),
      ),
    );
  }
}
