import 'package:flutter/material.dart';
import 'package:foodieshop/goldPages/addDeliveryBoys.dart';
import 'package:foodieshop/goldPages/editDeliveryBoy.dart';
import 'package:foodieshop/goldWidgets/appbar.dart';
import 'package:foodieshop/goldWidgets/commoncard.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';
import 'package:foodieshop/goldWidgets/searchBar.dart';

class DeliveryBoys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: themegreen,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return AddDeliveryBoys();
            }),
          );
        },
      ),
      backgroundColor: themecolor,
      appBar: FoodieAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 25, right: 25),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DELIVERY BOYS',
                  style: commonTextStyle,
                ),
                Searchbar(),
                SizedBox(height: 1,),
                CommonCard(hotelname: "Anumodh",location: "Thrissur Root",mobile: "9895301845",),
                CommonCard(hotelname: "AKhil",location: "Edukki Root",mobile: "9895301845",),
                CommonCard(hotelname: "Anumodh",location: "Any notes ...",mobile: "9895301845",),
                CommonCard(hotelname: "Anumodh",location: "",mobile: "9895301845",),
               
              ]
      ),
    ),
    )
    
    )
    );
  }
}