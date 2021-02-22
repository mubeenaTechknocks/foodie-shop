import 'package:flutter/material.dart';
import 'package:foodieshop/goldPages/shopEdit.dart';
import 'package:foodieshop/goldWidgets/appbar.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: themecolor,
      // appBar: FoodieAppbar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.edit),
        backgroundColor: themegreen,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ShopEdit();
            }),
          );
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned: true,
            expandedHeight: height * .45,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/Chicken65.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CHICKEN 65',
                      style: TextStyle(
                        color: themewhite,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: RichText(
                        text: TextSpan(
                            text: 'Category :   ',
                            style: TextStyle(
                              color: themewhite,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: 'Spicy',
                                style: TextStyle(
                                  color: themewhite,
                                  fontSize: 16,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: RichText(
                        text: TextSpan(
                            text: 'Price :   ',
                            style: TextStyle(
                              color: themewhite,
                              fontSize: 16,
                            ),
                            children: [
                              TextSpan(
                                text: '150/-',
                                style: TextStyle(
                                  color: themewhite,
                                  fontSize: 16,
                                ),
                              ),
                            ]),
                      ),
                    ),
                    Divider(
                      thickness: 7,
                      color: themegreen,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:10.0),
                      child: Text(
                        'Chicken 65 is a spicy, deep-fried chicken dish originating from Hotel Buhari, Chennai, India, as an entrée, or quick snack. The flavour of the dish can be attributed to red chillies, but the exact set of ingredients for the recipe can vary. It can be prepared using boneless or bone-in chicken and is usually served with onion and lemon garnish.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: themewhite,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
