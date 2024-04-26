import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Features/doctors_patient/Presentation/widget/description_form.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class DescriptionsOfDoctor extends StatelessWidget {
  const DescriptionsOfDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          Applocalizations.of(context)!.translatetext("doctor"),
          style: CustomTextStyles.lohit500style24,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: ListView(children: const [
            SizedBox(
              height: 20,
            ),
            DescriptionsForm(),
          ]),
        ),
      ),
    );
  }
}
