// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'InputPage.dart';

void main(){
  runApp(BMIcalculator());
}
class BMIcalculator extends StatelessWidget {
  const BMIcalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        //primaryColor: Color(0XFF090C22),
        appBarTheme:const AppBarTheme(color: Color(0XFF090C22),
        ),
        scaffoldBackgroundColor:  const Color(0XFF090C22),

      ),
      // ignore: prefer_const_constructors
      home:InputPage(),
    );
  }
}
