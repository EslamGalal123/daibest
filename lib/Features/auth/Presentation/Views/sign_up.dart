

import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/custom_signup_form.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/have_an_account_widget.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
               SliverToBoxAdapter(child: Image.asset(Assets.imagesImageSigin)),
               SliverToBoxAdapter(child: SizedBox(height: height*0.02)),
               SliverToBoxAdapter(child: CustomSignUpForm()),
               SliverToBoxAdapter(child: SizedBox(height: height*0.01)),
              SliverToBoxAdapter(
                child: HaveAnAccountWidget(
                  text1:Applocalizations.of(context)!.translatetext("alreadyHaveAnAccount"),

                  text2:Applocalizations.of(context)!.translatetext("signIn"),
                  onTap: () {
                    customNavigate(context, "/signIn");
                  },
                ),
              ),
               SliverToBoxAdapter(child: SizedBox(height: height*0.01)),
            ],
          ),
        ),
      ),
    );
  }
}