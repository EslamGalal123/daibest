import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_btn_profile.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/image_of_doctor.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class ProfileDoctorForm extends StatelessWidget {
  const ProfileDoctorForm({super.key});

  @override
  Widget build(BuildContext context) {
        final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return  Column(
      children: [
       SizedBox(
                  height: height * 0.3,
                  child: const ImagePickerView()),
        Row(
          children: [
           Text(
              Applocalizations.of(context)!.translatetext("Name  "),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
             SizedBox(width: width*0.03,),
            Text(
            Applocalizations.of(context)!.translatetext("eslamgalal"),
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        SizedBox(
          height: height*0.02,
        ),
        Row(
          children: [
            Text(
              Applocalizations.of(context)!.translatetext("specialization"),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
             SizedBox(width: width*0.03,),
            Text(
              AppStrings.internist,
              style:Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        SizedBox(
          height: height*0.02,
        ),
        Row(
          children: [
           Text(
              Applocalizations.of(context)!.translatetext("phoneNumbe"),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
             SizedBox(width: width*0.03,),
            Text(
              "01211901201",
              style:Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
         SizedBox(
          height:height*0.02,
        ),
        Row(
          children: [
            Text(
              Applocalizations.of(context)!.translatetext("citystreetblocknumber"),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(width: width*0.03,),
            Text(
             " 23 Talat harb/Cairo",
              style: Theme.of(context).textTheme.bodySmall,
           maxLines: 1,
            )
          ],
        ), SizedBox(
          height: height*0.02,
        ),
       Row(
          children: [
           Text(
              Applocalizations.of(context)!.translatetext("Link Of WhatsApp"),
              style: Theme.of(context).textTheme.bodyMedium,
            
            ),
             SizedBox(width:width*0.03,),
            Expanded(
              child: Text(
               " https://wa.me/qr/EBCZEGJL4HJFG1",
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
              ),
            )
          ],
        ), SizedBox(
          height: height*0.02,
        ),
         Row(
          children: [
           Text(
             Applocalizations.of(context)!.translatetext("Link Of Facebook"),
              style:Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(width: width*0.03,),
            Expanded(
              child: Text(
               " https://www.facebook.com/eslam.galal.1426?mibextid=ZbWKwL",
                style: Theme.of(context).textTheme.bodySmall,
                 maxLines: 1,
              ),
            )
          ],
        ),
         SizedBox(height:height*0.09,),
        CustomBtnProfile(text:Applocalizations.of(context)!.translatetext("editprofile"),onPressed: () {
          customNavigate(context, "/EditProfileDoctor");
        },)
      ],
    );
  }
}

