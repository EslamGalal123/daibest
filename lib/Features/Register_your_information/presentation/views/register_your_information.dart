import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_date.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_form_info_page1.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_height-weight.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_marital_status.dart';
import 'package:flutter/material.dart';

class RegisterYourInformation extends StatelessWidget {
  const RegisterYourInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          AppStrings.registerYourInformation,
          style:TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  fontFamily: "poppins",
  color: AppColors.black2
  ),
        ),
        elevation: 0,
        backgroundColor: AppColors.offwhite,
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  const SliverToBoxAdapter(child: SizedBox(height: 20)),
                  const SliverToBoxAdapter(child: CustomHeightWeight()),
                  const SliverToBoxAdapter(child: SizedBox(height: 10)),
                  SliverToBoxAdapter(
                      child: Row(
                    children: [
                      Expanded(child: DateButton()),
                      const Expanded(child: CustomMaritalState())
                    ],
                  )),
                  const SliverToBoxAdapter(child: SizedBox(height: 10)),
                  const SliverToBoxAdapter(child: CustomFormInfoPage1()),
                  const SliverToBoxAdapter(child: SizedBox(height: 25)),
                  SliverToBoxAdapter(
                      child: CustomBtn(
                    text: AppStrings.next,
                    onPressed: () {
                      customNavigate(context, "/registerYourInformationpage3");
                    },
                  )),
                                    const SliverToBoxAdapter(child: SizedBox(height: 10)),

                ])),
      ),
    );
  }
}
