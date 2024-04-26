import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/custom_social_icons.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class DescriptionsForm extends StatelessWidget {
  const DescriptionsForm({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          width: width * 0.44,
          height: height * 0.21,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.grey,
              width: 2.0,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              Assets.imagesImageProfilDoctor,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.06,
        ),
        Row(
          children: [
            Text(
             Applocalizations.of(context)!.translatetext("Name  "),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Text(
              AppStrings.eslamgalal,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          children: [
            Text(
                            Applocalizations.of(context)!.translatetext("specialization"),
           style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Text(
              AppStrings.internist,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          children: [
            Text(
              Applocalizations.of(context)!.translatetext("phoneNumbe"),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Text(
              "01211901201",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          children: [
            Text(
 Applocalizations.of(context)!.translatetext("clinicaddress")        ,
       style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              width: width * 0.03,
            ),
            Text(
              " 23 Talat harb/Cairo",
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 1,
            )
          ],
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
               Applocalizations.of(context)!.translatetext("contactnow"),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
         SizedBox(
          height: height*0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSocialIcons(image: Assets.imagesImageFacebook),
             SizedBox(
              width: width*0.04,
            ),
            CustomSocialIcons(image: Assets.imageswhatsapp),
          ],
        ),
      ],
    );
  }
}
