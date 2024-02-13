import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/checked_container.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/doctor_adresses.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/time_work.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorView extends StatelessWidget {
  DoctorView({super.key});
  TextEditingController citystreetblocknumber = new TextEditingController();
TextEditingController phoneNumbe = new TextEditingController();
TextEditingController whatsApp = new TextEditingController();
TextEditingController facebook = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.04,
                )),
                SliverToBoxAdapter(
                    child: Text(
                  AppStrings.registernow,
                  style: CustomTextStyles.lohit500style24.copyWith(
                      fontWeight: FontWeight.w700, color: AppColors.black2),
                )),
               SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.02,
                )),
                SliverToBoxAdapter(
                    child: DoctorAdress(
                  text: AppStrings.specialization,
                )),
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.01,
                )),
                const SliverToBoxAdapter(child: CheckedContainer()),
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.01,
                )),
                SliverToBoxAdapter(
                    child: DoctorAdress(
                  text: AppStrings.clinicaddress,
                )),
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.01,
                )),
                 SliverToBoxAdapter(
                    child: CustomTextFormField(
                      mycontroller: citystreetblocknumber,
                  labelText: AppStrings.citystreetblocknumber,
                  prefixIcon: Icon(Icons.location_city_rounded),
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                      mycontroller: phoneNumbe,
                  labelText: AppStrings.phoneNumbe,
                  prefixIcon: Icon(Icons.phone),
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                      mycontroller: facebook,
                  labelText: "Link Of Facebook",
                  prefixIcon: Icon(Icons.facebook),
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                      mycontroller: whatsApp,
                  labelText: "Link Of WhatsApp",
                  prefixIcon: Icon(Icons.chat),
                )),
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.02,
                )),
                SliverToBoxAdapter(
                    child: Row(
                  children: [
                    const Icon(Icons.punch_clock),
                    DoctorAdress(
                      text: AppStrings.timework,
                    )
                  ],
                )),
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.01,
                )),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      TimeWork(date: AppStrings.start),
                       SizedBox(
                        width: width*0.2,
                      ),
                      TimeWork(date: AppStrings.end),
                    ],
                  ),
                ),
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height:height*0.06,
                )),
                SliverToBoxAdapter(
                    child: CustomBtn(
                  text: AppStrings.saveprofile,
                  onPressed: () {
                    customNavigate(context, "/ProfileDoctorView");
                  },
                )),
              ])),
    ));
  }
}
