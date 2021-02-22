import 'package:flutter/material.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';

class OrderCard extends StatelessWidget {
  final String itemname;
  final String time;
  final void Function() onPressed;

  const OrderCard({Key key, this.itemname='', this.time='', this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Card(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            color: themedimbalck,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  itemname,
                  style: commonTextStyle,
                ),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
