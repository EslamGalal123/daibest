import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/doctor_adresses.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/edit_profil_form.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/time_work.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditProfileDoctor extends StatelessWidget {
  EditProfileDoctor({super.key});
 TextEditingController citystreetblocknumber =  TextEditingController();
TextEditingController phoneNumbe =  TextEditingController();
TextEditingController whatsApp =  TextEditingController();
TextEditingController facebook =  TextEditingController();

  @override
  Widget build(BuildContext context) {
        final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(Applocalizations.of(context)!.translatetext("editprofile"),style: Theme.of(context).textTheme.titleMedium,),
      ),
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [ 
               const  SliverToBoxAdapter(
               child:EditProfileDoctorForm()),
                SliverToBoxAdapter(
                    child: DoctorAdress(
                  text: Applocalizations.of(context)!.translatetext("clinicaddress"),
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
                  height: height*0.01,
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
                      TimeWork(date:Applocalizations.of(context)!.translatetext("end")),
                    ],
                  ),
                ),
                 SliverToBoxAdapter(
                    child: SizedBox(
                  height: height*0.05,
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
