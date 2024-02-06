import 'package:diabestapp/Features/auth/Presentation/widgets/custom_signin_form.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const  EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics:const  BouncingScrollPhysics(),
          slivers: [
             SliverToBoxAdapter(child: CustomSignInForm()),
        ]))
    );
  }
}