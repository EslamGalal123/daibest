import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/custom_check_box.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/custom_social_icons.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/forgot_password_text_widget.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/have_an_account_widget.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSignInForm extends StatelessWidget {
   CustomSignInForm({super.key});
  TextEditingController emailAddress= TextEditingController();
TextEditingController password=  TextEditingController();


  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          Assets.imagesLogo,
          height: height*0.4,
        ),
         Text(
          Applocalizations.of(context)!.translatetext("logintoyouraccount"),
          style: CustomTextStyles.lohit500style24,
        ),
         SizedBox(
          height: height*0.02,
        ),
        CustomTextFormField(
          mycontroller: emailAddress,
          labelText:  Applocalizations.of(context)!.translatetext("emailAddress"),
          prefixIcon: const Icon(Icons.email),
          onChanged: (email) {},
        ),
        CustomTextFormField(
          mycontroller: password,
            labelText:  Applocalizations.of(context)!.translatetext("password"),
            prefixIcon: const Icon(Icons.lock),
            onChanged: (password) {}),
        const CustomCheckBox(),
         SizedBox(
          height: height*0.01,
        ),
        CustomBtn(
          text:  Applocalizations.of(context)!.translatetext("signIn"),
          onPressed: () {},
        ),
        SizedBox(
          height: height*0.01,
        ),
       const ForgotPasswordTextWidget(),
         SizedBox(
          height: height*0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSocialIcons(image: Assets.imagesImageFacebook),
            CustomSocialIcons(image: Assets.imagesImageGoogle),
            CustomSocialIcons(image: Assets.imagesImageApple),
          ],
        ),
         SizedBox(
          height: height*0.01,
        ),
       HaveAnAccountWidget(text1:  Applocalizations.of(context)!.translatetext("donthaveanaccount"), text2:  Applocalizations.of(context)!.translatetext("signUp"),
     onTap: () {
       customNavigate(context, "/signUp");
     },)
      ],
    );
  }
}
