import 'package:flutter/material.dart';
import 'package:foodieshop/goldPages/login.dart';
import 'package:foodieshop/goldPages/deliveryBoys.dart';
import 'package:foodieshop/goldWidgets/constraints.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';


class FoodieAppbar extends StatefulWidget implements PreferredSizeWidget {
 
  final String title;
  FoodieAppbar({Key key, this.title})
      : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _FoodieAppbarState createState() => _FoodieAppbarState();
}

class _FoodieAppbarState extends State<FoodieAppbar> {
  @override
  Widget build(BuildContext context) { 
    return AppBar(
       
       elevation: 0,
       shadowColor: themecolor,
       backgroundColor: themecolor,
        title:Image.asset('images/logo.png',width: 100,height: 100,),
        actions: [
          Container(
            padding: EdgeInsets.only(top:20),
            child: Text("SPOON",style: TextStyle(fontSize:18),)),
            Container(
            padding: EdgeInsets.only(top:5),
            child:PopupMenuButton<String>(
              icon: Image.asset('images/arrowdown.png',),
            
              itemBuilder: (context) => [
        PopupMenuItem(
          
            child: Row(
            children: <Widget>[
            GestureDetector(
              child:  Text('Delevery Boys',style: TextStyle(fontSize:18),),
              onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DeliveryBoys();
              }));
            }
            
             ),
            
      ],
    )),
  
        PopupMenuItem(
           
            child: Row(
          children: <Widget>[
            GestureDetector(
                onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Login();
              }));
            },
              child: Text('Log Out',style: TextStyle(fontSize:18)))
          ],
        )),
      ])


            ),
            
                ],
                );
  
  
  }
  
}
