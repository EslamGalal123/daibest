import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/signup_radio.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSignUpForm extends StatelessWidget {
  CustomSignUpForm({super.key});
  TextEditingController fullname =  TextEditingController();
  TextEditingController nationalID =  TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmThePassword =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(children: [
      CustomTextFormField(
        mycontroller: fullname,
        labelText:  Applocalizations.of(context)!.translatetext("fullname"),
        onChanged: (fristName) {},
      ),
      CustomTextFormField(
        mycontroller: nationalID,
        labelText:  Applocalizations.of(context)!.translatetext("nationalID"),
        onChanged: (lastName) {},
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
      CustomTextFormField(
          mycontroller: confirmThePassword,
          labelText:  Applocalizations.of(context)!.translatetext("confirmThePassword"),
          prefixIcon: const Icon(Icons.lock),
          onChanged: (password) {}),
      SizedBox(height: height * 0.01),
      const SignUpRadio(),
      
    ]);
  }
}
