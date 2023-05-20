import 'package:bmi_calculator/constats.dart';
import 'package:flutter/material.dart';

class ButtomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ButtomButton({required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
      child:Center(child:Text(title!,style:kLableLarge,),) ,
      color: KColorBottom,
      margin: EdgeInsets.only(top: 10),
      height: kBottonContainerHeight,
      width: double.infinity,
      ),
    );
  }
}