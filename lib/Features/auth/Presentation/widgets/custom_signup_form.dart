import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/signup_radio.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSignUpForm extends StatelessWidget {
  CustomSignUpForm({super.key});
  TextEditingController fullname = new TextEditingController();
  TextEditingController nationalID = new TextEditingController();
  TextEditingController emailAddress = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmThePassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(children: [
      CustomTextFormField(
        mycontroller: fullname,
        labelText: AppStrings.fullname,
        onChanged: (fristName) {},
      ),
      CustomTextFormField(
        mycontroller: nationalID,
        labelText: AppStrings.nationalID,
        onChanged: (lastName) {},
      ),
      CustomTextFormField(
        mycontroller: emailAddress,
        labelText: AppStrings.emailAddress,
        prefixIcon: const Icon(Icons.email),
        onChanged: (email) {},
      ),
      CustomTextFormField(
          mycontroller: password,
          labelText: AppStrings.password,
          prefixIcon: const Icon(Icons.lock),
          onChanged: (password) {}),
      CustomTextFormField(
          mycontroller: confirmThePassword,
          labelText: AppStrings.confirmThePassword,
          prefixIcon: const Icon(Icons.lock),
          onChanged: (password) {}),
      SizedBox(height: height * 0.01),
      const SignUpRadio(),
      
    ]);
  }
}
