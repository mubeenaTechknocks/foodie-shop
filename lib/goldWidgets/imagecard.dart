import 'package:flutter/material.dart';
import 'package:foodieshop/goldWidgets/goldSetting.dart';

class ImageCard extends StatelessWidget {
  final double whitecardwidth;
  final double whitecardheight;
  final double imagecardwidth;
  final double imagecardheight;
  final String image;

  const ImageCard({Key key, this.whitecardwidth:88, this.whitecardheight:88, this.imagecardwidth:83, this.imagecardheight:83, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(children:[Positioned(
                      left: width*0.009,
                         child: Card(
                         color: themewhite,
                         shape: RoundedRectangleBorder(
                         borderRadius: BorderRadiusDirectional.circular(20)),
                         child:Container(width:whitecardwidth,height:whitecardheight),
                      ),
                    ),

                    Positioned(
                      left: width*0.023,top: height*0.007,
                      child:  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(image,    
                                        width: imagecardwidth,
                                        height: imagecardheight,
                                        fit: BoxFit.fill,
                              ),
                              ),    
                              ),]
                              ),
    height:200,
    );
    
    
  }
}