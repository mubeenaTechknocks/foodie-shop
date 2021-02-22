import 'package:flutter/material.dart';
import 'package:foodieshop/goldPages/product.dart';
import 'package:foodieshop/goldWidgets/card.dart';

class AdminCard extends StatefulWidget {
  @override
  _AdminCardState createState() => _AdminCardState();
}

class _AdminCardState extends State<AdminCard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return FlatButton(
      onPressed: () {},
      child: Container(
        // width: width,
        height: height * 0.8,
        // color: Colors.red,
        child: Center(
          child: Container(
            // height: height,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 28),
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (BuildContext context, int index) {
                return ShopCard(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Product();
                      }),
                    );
                  },
                  location: "RS:/- 450",
                  hotelname: "CHICKEN 65",
                );
              },
            ),
            // child: ListView(
            //   // scrollDirection: Axis.vertical,
            //   // crossAxisCount: 1,
            //   // crossAxisSpacing: 5.0,
            //   // mainAxisSpacing: 5.0,
            //   children: [
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),
            //   ShopCard(location: "RS:/- 450",mobile: "Quantity : 1 KG",hotelname: "CHICKEN 65",),

            //   ],
          ),
        ),
      ),
    );
    // );
  }
}
