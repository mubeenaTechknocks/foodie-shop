import 'package:flutter/material.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';
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
    return TextButton(
      onPressed: widget.onPressed,
      child: Card(
        color: themedimbalck,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20)),
        child: Container(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
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
                        Text(widget.hotelname,
                            style: TextStyle(
                                color: themewhite,
                                fontSize: 20,
                                fontWeight: FontWeight.w800)),
                        Text(widget.location,
                            style: TextStyle(
                              color: themewhite,
                              fontSize: 14,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              SwitchAvailability(),
            ],
          ),
        ),
      ),
    );
  }
}
