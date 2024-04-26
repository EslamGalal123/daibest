import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/checked_container.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/doctor_adresses.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/time_work.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorView extends StatelessWidget {
  DoctorView({super.key});
  TextEditingController citystreetblocknumber =  TextEditingController();
TextEditingController phoneNumbe =  TextEditingController();
TextEditingController whatsApp =  TextEditingController();
TextEditingController facebook =  TextEditingController();


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
                  Applocalizations.of(context)!.translatetext("registernow"),
                  style: CustomTextStyles.lohit500style24.copyWith(
                      fontWeight: FontWeight.w700, color: AppColors.black2),
                )),
               SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.02,
                )),
                SliverToBoxAdapter(
                    child: DoctorAdress(
                  text: Applocalizations.of(context)!.translatetext("specialization"),
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
                  text: Applocalizations.of(context)!.translatetext("clinicaddress"),
                )),
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.01,
                )),
                 SliverToBoxAdapter(
                    child: CustomTextFormField(
                      mycontroller: citystreetblocknumber,
                  labelText: Applocalizations.of(context)!.translatetext("citystreetblocknumber"),
                  prefixIcon:const Icon(Icons.location_city_rounded),
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                      mycontroller: phoneNumbe,
                  labelText: Applocalizations.of(context)!.translatetext("phoneNumbe"),
                  prefixIcon:const Icon(Icons.phone),
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                      mycontroller: facebook,
                  labelText: Applocalizations.of(context)!.translatetext("Link Of Facebook"),
                  prefixIcon:const Icon(Icons.facebook),
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                      mycontroller: whatsApp,
                  labelText: Applocalizations.of(context)!.translatetext("Link Of WhatsApp"),
                  prefixIcon:const Icon(Icons.chat),
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
                      text: Applocalizations.of(context)!.translatetext("timework"),
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
                      TimeWork(date: Applocalizations.of(context)!.translatetext("start")),
                       SizedBox(
                        width: width*0.2,
                      ),
                      TimeWork(date: Applocalizations.of(context)!.translatetext("end")),
                    ],
                  ),
                ),
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height:height*0.06,
                )),
                SliverToBoxAdapter(
                    child: CustomBtn(
                  text: Applocalizations.of(context)!.translatetext("saveprofile"),
                  onPressed: () {
                    customNavigate(context, "/ProfileDoctorView");
                  },
                )),
              ])),
    ));
  }
}
