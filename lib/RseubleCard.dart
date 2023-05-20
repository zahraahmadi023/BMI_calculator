import 'package:bmi_calculator/constats.dart';
import 'package:flutter/material.dart';

class RseubleCard extends StatelessWidget {
  
  final Color? color;
  final Widget? child;
  final void Function()? onpress; 
  RseubleCard({this.color,this.child,this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: child,
      margin: const EdgeInsetsDirectional.all(15),
             // ignore: prefer_const_constructors
      decoration: BoxDecoration(
      color: color??kColorActivity,///////defult color even null is __>color has
      borderRadius: BorderRadius.circular(10),
            ),
            // height: 200,
            // width: 170,
          ),
    );
  }
}
