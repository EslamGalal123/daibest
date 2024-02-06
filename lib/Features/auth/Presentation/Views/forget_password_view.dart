import 'package:diabestapp/Features/auth/Presentation/widgets/custom_forget_password.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViews extends StatelessWidget {
  const ForgotPasswordViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        elevation: 0,
        title:const Text('Forget Password')),
      body: SafeArea(
        child: Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 16.0),
          child: 
CustomForgetPasswordForm()
          )));
  }
}