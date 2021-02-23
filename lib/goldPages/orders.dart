import 'package:flutter/material.dart';
import 'package:foodieshop/goldPages/orderDetails.dart';
import 'package:foodieshop/goldPages/picked.dart';
import 'package:foodieshop/goldPages/prepairing.dart';
import 'package:foodieshop/goldPages/tobePicked.dart';
import 'package:foodieshop/goldWidgets/appbar.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';
import 'package:foodieshop/goldWidgets/orderCard.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int placed = 3;
    int prepairing = 5;
    int picked = 17;
    int tobepicked = 2;
    return DefaultTabController(
      
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        backgroundColor: themecolor,
        appBar: FoodieAppbar(),
        body: Column(
          children: [
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: themecolor,
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    50.0,
                  ),
                  color: themegreen,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
                   Tab(
                    child :Text('Placed ($placed)',textAlign: TextAlign.center,),
                  ),
                  Tab(
                    child :Text('Prepairing ($prepairing)',textAlign: TextAlign.center,),
                  ),
                  Tab(
                    child :Text('To Be Picked ($tobepicked)',textAlign: TextAlign.center,),
                  ),
                  Tab(
                    child :Text('Picked ($picked)',textAlign: TextAlign.center,),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                      itemCount: placed,
                      itemBuilder: (context, index) {
                        return OrderCard(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return OrderDetails();
                              }),
                            );
                          },
                          itemname: 'CHIKEN 65',
                          time: '5m',
                        );
                      }),
                  ListView.builder(
                      itemCount: prepairing,
                      itemBuilder: (context, index) {
                        return OrderCard(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Preparing();
                              }),
                            );
                          },
                          itemname: 'CHIKEN 65',
                          time: '13m',
                        );
                      }),
                  ListView.builder(
                      itemCount: tobepicked,
                      itemBuilder: (context, index) {
                        return OrderCard(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return TobePicked();
                              }),
                            );
                          },
                          itemname: 'CHIKEN 65',
                        );
                      }),
                      ListView.builder(
                      itemCount: picked,
                      itemBuilder: (context, index) {
                        return OrderCard(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return Picked();
                              }),
                            );
                          },
                          itemname: 'CHIKEN 65',
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
