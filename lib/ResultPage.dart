import 'package:bmi_calculator/ButtomButton.dart';
import 'package:bmi_calculator/RseubleCard.dart';
import 'package:bmi_calculator/constats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResultPage extends StatelessWidget {
  final String? bmiResult, resultTextg,interpertionn;
  ResultPage({required  this.bmiResult, required this.resultTextg, this.interpertionn,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Result page')),

      body:Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
        Expanded(child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(15),
          child:Text('Your Result',style: klableResult,),
        ),
        ) , 
        Expanded(
          flex: 5,
          child: RseubleCard(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
            Text(resultTextg! ,style: ktextStyleRes,),
            
            Text(bmiResult!,style: kBMItextStyle,), 

            Text('BMI is normal ',style: kBMItextgray,) ,  

            Text('18/5 -25 kg/m2',style:kbodytextstyle ,),

            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(15.0),
              // ignore: prefer_const_constructors
              child: Text(interpertionn!,style: kbodytextstyle,
              textAlign: TextAlign.center, ),
            ),

          ],
          ),
          
          ),
          ),
          ButtomButton(title: 'Re_calculator', onTap: () { 
          Navigator.pop(context);
          }
          ),
          
        ],
      )

    );
  }
}