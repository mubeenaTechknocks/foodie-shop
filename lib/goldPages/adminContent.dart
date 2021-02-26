import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodieshop/goldPages/orders.dart';
import 'package:foodieshop/goldWidgets/adminCard.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';

class Admincontents extends StatefulWidget {
  @override
  _AdmincontentsState createState() => _AdmincontentsState();
}

class _AdmincontentsState extends State<Admincontents> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    int number = 3;
    return SingleChildScrollView(
      child: Container(
        // color: Colors.red,
        // height: height,
        width: width,
        child: Column(
          children: [
            number > 0
                ? Card(
                    color: themegreen,
                    child: Column(children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Orders();
                            }),
                          );
                        },
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          height: 50,
                          width: width,
                          child: Text(
                            "$number New Orders >>> ",
                            style: TextStyle(
                                color: themewhite,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ]),
                  )
                : SizedBox(),
            Container(
              // color: Colors.purple,
              width: width,
              height: 90,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width,
                      //  color: Colors.green,

                      margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                      child: TextField(
                        style: TextStyle(color: themewhite, fontSize: 18),
                        showCursor: false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: themewhite,
                            size: 35,
                          ),
                          hintText: "SEARCH FOR PRODUCTS",
                          hintStyle:
                              TextStyle(color: themedimwhite, fontSize: 14),
                          focusColor: themewhite,
                        ),
                      ),
                    ), //text inputbox container
                    Divider(
                      thickness: 7,
                      color: themegreen,
                      endIndent: 20,
                      indent: 20,
                    )
                  ]),
            ),
            AdminCard(),
          ],
        ),
      ),
    );
  }
}
