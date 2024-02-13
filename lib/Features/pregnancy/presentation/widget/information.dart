import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:flutter/material.dart';

class PregnancyInformation extends StatelessWidget {
   PregnancyInformation({super.key,required this.text});
String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.specific,width: 35,),
        Text(text!,style:CustomTextStyles.lohit400style22 ,),
      const  SizedBox(height: 20,),
      ],
    );
  }
}