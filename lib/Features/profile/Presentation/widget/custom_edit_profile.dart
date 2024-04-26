import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_info_for_patient.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Features/profile/Functions/edit_profile.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomEditProfile extends StatelessWidget {
   CustomEditProfile({super.key});
TextEditingController name =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          mycontroller: name,
          labelText:""),
       const CustomInfoForPatient(),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF246BFE),
                  minimumSize:const Size(0, 50),
                  padding:const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side:const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
                child:  Text(
                  Applocalizations.of(context)!.translatetext("saveprofile"),
                  style:const TextStyle(fontSize: 19.0,color: Colors.white, fontFamily:"poppins",fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(width: 50,),
            TextButton(
              onPressed: () {
                showChangePasswordDialog(context);
              },
              child: Text(Applocalizations.of(context)!.translatetext("changepassword"),style:const TextStyle(fontSize: 16),),
            ),
          ],
        )
      ],
    );
  }
}
