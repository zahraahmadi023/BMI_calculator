import 'package:bmi_calculator/ButtomButton.dart';
import 'package:bmi_calculator/ResultPage.dart';
import 'package:bmi_calculator/RseubleCard.dart';

import 'package:bmi_calculator/calculator.dart';

import 'package:bmi_calculator/constats.dart';
import 'package:bmi_calculator/icon_container.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'RowIconButton.dart';

enum Genders{ male ,famel}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genders? selectedGender;
  int height=160;
  int weight=60;
  int age=19;
  // Color maleCardColor =ColorInActivity;
  // Color famelCardColor=ColorInActivity;
  //male 1,famel 2
  // void changeColor( Genders  gender){
  //   //on press card color
  //   if(gender==Genders.male){
  //     if(maleCardColor==ColorInActivity){
  //       maleCardColor=ColorActivity;
  //     famelCardColor=ColorInActivity;
  //     }else{
  //       maleCardColor=ColorInActivity;
  //     }
      
  //   }else{
  //     if(famelCardColor==ColorInActivity){
  //       famelCardColor=ColorActivity;
  //       maleCardColor=ColorInActivity;
  //     }else{
  //       famelCardColor=ColorInActivity;
  //     }

  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
        Expanded(child: 
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Expanded(child:
                RseubleCard(
                  onpress: () {
                    setState(() {
                      selectedGender=Genders.male;
                    });
                  },
                  color:selectedGender==Genders.male ?kColorActivity:kColorInActivity ,
                  child: icon_container(icon:FontAwesomeIcons.mars,lable: 'male',),
                ),
            ),
            Expanded(child:
            // GestureDetector(
            //     onTap: () {
            //       setState(() {
            //         //changeColor(Genders.famel);
            //         selectedGender=Genders.famel; 
            //       });
            //     },
              RseubleCard(
                onpress: () {
                  setState(() {
                    selectedGender=Genders.famel;
                  });
                },
                color: selectedGender==Genders.famel?kColorActivity:kColorInActivity,
                child: icon_container(icon: FontAwesomeIcons.venus,lable: 'famel',),
                
              ),
        )
        ],
        )
        ),
        Expanded(child: 
          RseubleCard(
            // ignore: prefer_const_literals_to_create_immutables
            child: Column
            (mainAxisAlignment: MainAxisAlignment.center,
              children: [
              // ignore: prefer_const_constructors
              Text('HEIGHT ',
              style: kLableTextStyle,),
              // ignore: prefer_const_literals_to_create_immutables
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                // ignore: prefer_const_literals_to_create_immutables
                children:[
                Text(height.toString(),
                style:kLableNumber, ),
                const Text('cm',style:kLableTextStyle,)
              ],),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 1,
                  inactiveTrackColor: Color(0xFF8D8E98),
                  activeTrackColor: Colors.white,
                  thumbColor: const Color(0xFFEB1555),
                  overlayColor: const Color(0x1fEB1555),
                
                  thumbShape:
                  const RoundSliderThumbShape(enabledThumbRadius:18),
                  overlayShape: 
                  const RoundSliderOverlayShape(overlayRadius: 30),
                ),
                child: Slider(value:height.toDouble() ,
                min:120,
                max:220,
                
                onChanged:(double newValue){
                setState(() {
                  height=newValue.round();
                });
                }
                  ),
              )
            ]),
          ),
        ),
        Expanded(child: 
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            ////////////////////forms down 
            Expanded(child:
              RseubleCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('weight',style: kLableTextStyle,),
                    SizedBox(height: 10,),
                    Text(weight.toString(),style: kLableNumber,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        RowIconButton(icon: FontAwesomeIcons.minus, onpress: () { 
                          setState(() {
                            weight--;
                          });
                        },),
                        const SizedBox(width: 20),
                      RowIconButton(icon: FontAwesomeIcons.plus, onpress: () { 
                          setState(() {
                            weight++;                       
                            });
                      },),
                  ] )
                  ],
                ),
                
              ),
            ),
            Expanded(child:
              // RseubleCard(color: Color(0xFF1D1E33),),
              /////////////////////////////////////////////////////////////age
              RseubleCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('age',style: kLableTextStyle,),
                    SizedBox(height: 10,),
                    Text(age.toString(),style: kLableNumber,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        RowIconButton(icon: FontAwesomeIcons.minus, onpress: () { 
                          setState(() {
                            age--;
                          });
                        },),
                      SizedBox(width: 20),
                      RowIconButton(icon: FontAwesomeIcons.plus, onpress: () { 
                          setState(() {
                            age++;                       
                            });
                      },),
                  ] )
                  ],
                ),
              ),
            ),
        ],
        ),
        ),
        ////bottom
        ButtomButton(title: 'Calculator',onTap: () {
        calculator calculator1=calculator(height: height,weight: weight);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
          bmiResult:calculator1.calculatorBMI(),
          resultTextg:calculator1.getResult(),
          interpertionn:calculator1.getInterPretion()
        ),
        ),
        );
        },),
      ],
      ),
    );
  }
}
///////////////////////////////////////////////////////////////bottom pink

///////////////////////////////////////////////////////////////
// class RowIconButton extends StatelessWidget {
//   final  IconData? icon;
//   final  void Function()? onpress;
//   RowIconButton({required this.icon,required this.onpress});

//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       child: Icon(icon),
//       // ignore: prefer_const_constructors
//       constraints:BoxConstraints.tightFor(
//         height: 56,
//         width: 56,
//       ),
//       elevation: 6,
//       onPressed: onpress,
//     fillColor: Color(0xFF4C4F5E),
//       shape:CircleBorder() ,
//     );
//   }
//     // FloatingActionButton(
//     // backgroundColor: Color(0xFF4C4F5E),
//     // onPressed: (){},
//     //child: Icon(Icons.add,color: Colors.white,),
//     // ),
// }
/////////////////////////////////////////////////////////////////////////////container small
////icon_container
/////////////////////////////////////////////////////////////////////////////////////////////////////
///ResableCard