import 'package:flutter/material.dart';

class RowIconButton extends StatelessWidget {
  final  IconData? icon;
  final  void Function()? onpress;
  RowIconButton({required this.icon,required this.onpress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      // ignore: prefer_const_constructors
      constraints:BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      elevation: 6,
      onPressed: onpress,
    fillColor: Color(0xFF4C4F5E),
      shape:CircleBorder() ,
    );
  }
    // FloatingActionButton(
    // backgroundColor: Color(0xFF4C4F5E),
    // onPressed: (){},
    //child: Icon(Icons.add,color: Colors.white,),
    // ),
}