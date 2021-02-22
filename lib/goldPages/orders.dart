import 'package:flutter/material.dart';
import 'package:foodieshop/goldWidgets/appbar.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        backgroundColor: themecolor,
        appBar: FoodieAppbar(
          preferredHeight: 90,
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: OutlineButton(
                  onPressed: () {},
                  child: Text('Placed'),
                  textColor: Colors.white,
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                text: 'Prepairing',
              ),
              Tab(
                text: 'Picked',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Text(
              'This is Cake Tab',
              style: TextStyle(fontSize: 32, color: Colors.white),
            )),
            Center(
                child: Text(
              'This is Radio Tab',
              style: TextStyle(fontSize: 32, color: Colors.white),
            )),
            Center(
                child: Text(
              'This is Gift Tab',
              style: TextStyle(fontSize: 32, color: Colors.white),
            )),
          ],
        ),
      ),
    );
  }
}
