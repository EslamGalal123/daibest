import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:flutter/material.dart';

class SignUpRadio extends StatefulWidget {
  const SignUpRadio({super.key});

  @override
  State<SignUpRadio> createState() => _SignUpRadioState();
}

class _SignUpRadioState extends State<SignUpRadio> {
  String? selectedOption;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
        final double height = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio<String>(
                value: AppStrings.patient,
                groupValue: selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    selectedOption = value!;
                  });
                }),
            Text(
              AppStrings.patient,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          SizedBox(width: width*0.1,),
            Radio<String>(
                value: AppStrings.doctor,
                groupValue: selectedOption,
                onChanged: (String? value) {
                  setState(() {
                    selectedOption = value!;
                  });
                }),
         Text(
              AppStrings.doctor,
              style:Theme.of(context).textTheme.titleSmall ,
            )
          ],
        ),
        SizedBox(height: height * 0.01),
      CustomBtn(
        text: AppStrings.signUp,
       onPressed: () {
            if (selectedOption == AppStrings.patient) {
              
              customNavigate(context, "/registerYourInformation");
            } else if (selectedOption == AppStrings.doctor) {
              
                customNavigate(context, "/doctor");
            }
          },
      )
      ],
    );

  }
}