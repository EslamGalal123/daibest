import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/Home/presentatio/widgets/custom_list_tile.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class CustomHome extends StatelessWidget {
  const CustomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              Assets.imagesLogo2,
              width: MediaQuery.of(context).size.width * 0.40,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.diabest,
                      style: TextStyle(
                          letterSpacing: 3,
                          color: AppColors.black1,
                          fontFamily: "poppins",
                          fontSize: 44,
                          fontWeight: FontWeight.bold)),
                  Text(
                    AppStrings.enjayyourlifewithdiabest,
                    maxLines: 1,
                    style: CustomTextStyles.lohit300style16.copyWith(
                      color: AppColors.red,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        CustomListTileInHome(
          titlehome: Applocalizations.of(context)!.translatetext("organs"),
          subtitlehome: Applocalizations.of(context)!.translatetext("neew"),
          leadinghome: Assets.imagesorgans,
          onpressed: () {
            customNavigate(context, "/organsView");
          },
        ),
        CustomListTileInHome(
          titlehome: Applocalizations.of(context)!.translatetext("reminderMedicins"),
          subtitlehome: Applocalizations.of(context)!.translatetext("neew"),
          leadinghome: Assets.imagesImagePill,
          onpressed: () {
            customNavigate(context, "/ReminderMedicinsView");
          },
        ),
        CustomListTileInHome(
          titlehome: Applocalizations.of(context)!.translatetext("eating"),
          subtitlehome: Applocalizations.of(context)!.translatetext("neew"),
          leadinghome: Assets.imagesImageMeal,
          onpressed: () {
            customNavigate(context, "/eatingview");
          },
        ),
        CustomListTileInHome(
          titlehome: Applocalizations.of(context)!.translatetext("sprts"),
          subtitlehome: Applocalizations.of(context)!.translatetext("neew"),
          leadinghome: Assets.imagesImageSports,
          onpressed: () {
            customNavigate(context, "/WorkoutPlanScreen");
          },
        ),
        CustomListTileInHome(
          titlehome: Applocalizations.of(context)!.translatetext("pregnancy"),
          subtitlehome: Applocalizations.of(context)!.translatetext("neew"),
          leadinghome: Assets.imagespregnancy,
          onpressed: () {
            customNavigate(context, "/PregnancyView");
          },
        )
      ],
    );
  }
}
