import 'package:bmi_calculator/constats.dart';
import 'package:flutter/material.dart';

class icon_container extends StatelessWidget {
  IconData? icon;
  String? lable;
  // ignore: use_key_in_widget_constructors
    icon_container({
    this.icon,
    this.lable,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children:[
      Icon(
      icon
      ,size: 80,),
      SizedBox(height: 15,),
      Text(
        lable!
      ,style:
      kLableTextStyle,),
    ],
    );
  }
}