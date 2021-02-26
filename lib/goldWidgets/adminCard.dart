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
    return SizedBox(
      // width: width,
      height: height,
      child: Center(
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
      ),
    );
  
  }
}
