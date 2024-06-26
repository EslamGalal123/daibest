import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomForgetPasswordForm extends StatelessWidget {
  CustomForgetPasswordForm({Key? key}) : super(key: key);
TextEditingController emailAddress =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: height*0.01),
        Expanded(
          child: Text(
            Applocalizations.of(context)!.translatetext("Reset your password with email"),
            textAlign: TextAlign.center,
            style: CustomTextStyles.lohit500style18,
          ),
        ),
        SizedBox(height: height*0.01),
        
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesImageNewpassword2,
                height:height*0.33 ,
                width:width*0.75 ,
              ),
        SizedBox(height: height*0.03),
             CustomTextFormField(
            mycontroller: emailAddress,
            labelText: AppStrings.emailAddress),
            ],
          
        ),
        SizedBox(height: height*0.02),
      const  Spacer(flex: 4,),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CustomBtn(
              text:  Applocalizations.of(context)!.translatetext("Continue"),
              onPressed: () {
                customNavigate(context, "/MyVerificationPage");
              },
            ),
          ),
        ),
        SizedBox(height: height*0.02),

      ],
    );
  }
}