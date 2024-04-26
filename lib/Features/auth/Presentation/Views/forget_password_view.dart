import 'package:diabestapp/Features/auth/Presentation/widgets/custom_forget_password.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViews extends StatelessWidget {
  const ForgotPasswordViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        elevation: 0,
        title: Text(Applocalizations.of(context)!.translatetext("Forget Password"))),
      body: SafeArea(
        child: Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 16.0),
          child: 
CustomForgetPasswordForm()
          )));
  }
}