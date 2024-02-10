import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:flutter/material.dart';

class CustomMyWatchForm extends StatelessWidget {
  const CustomMyWatchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              Assets.imagesLogo2,
              width: MediaQuery.of(context).size.width * 0.35,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.diabest,
                    style:TextStyle( letterSpacing: 3,color: AppColors.black1, fontFamily: "poppins",fontSize: 44,fontWeight: FontWeight.bold)
                  ),
                  Text(
                    AppStrings.enjayyourlifewithdiabest,
                    maxLines: 1,
                    style: CustomTextStyles.lohit300style16.copyWith(
                      color: AppColors.red,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                 
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              "Blood Suger Type :      ",
              style: CustomTextStyles.lohit500style20,
            ),
            // Text(
            //   ' ------',
            //   style: CustomTextStyles.lohit400style18,
            // )
            Container(
  width: 80,
  height: 25,
  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              "Dia Best Reading :       ",
              style: CustomTextStyles.lohit500style20,
            ),
           Container(
  width: 80,
  height: 25,
  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Text(
              "Classification Suger :  ",
              style: CustomTextStyles.lohit500style20,
            ),
            Container(
  width: 80,
  height: 25,
  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          children: [
            Text(
              "Medical Test",
              style: CustomTextStyles.lohit500style22,
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "RBS :  ",
                        style: CustomTextStyles.lohit500style20,
                      ),
                     Container(
  width: 80,
  height: 25,
  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "HbA1c :  ",
                        style: CustomTextStyles.lohit500style20,
                      ),
                     Container(
  width: 80,
  height: 25,
  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
)
                    ],
                  ),
                ],
              ),
            ),
          
          ],
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
