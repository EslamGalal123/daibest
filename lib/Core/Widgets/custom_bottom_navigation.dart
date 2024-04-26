import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/Home/presentatio/views/home_views.dart';
import 'package:diabestapp/Features/contact_us/Presentation/views/contact_us.dart';
import 'package:diabestapp/Features/doctors_patient/Presentation/view/doctor_patient.dart';
import 'package:diabestapp/Features/my_watch/presentation/views/my_watch.dart';
import 'package:diabestapp/Features/profile/Presentation/view/profile_view.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class CustomBtnNavigation extends StatefulWidget {
  const CustomBtnNavigation({super.key});

  @override
  State<CustomBtnNavigation> createState() => _CustomBtnNavigationState();
}

class _CustomBtnNavigationState extends State<CustomBtnNavigation> {
  int selectedIndex = 0;
  List widgetPages = [
    const HomeViews(),
    const DoctorPatientView(),
    const MyWatchView(),
     const ContactUsView(),
     const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor:AppColors.white,
      bottomNavigationBar:  BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            elevation: 0,
            selectedItemColor: AppColors.primarycolor,
            unselectedItemColor: AppColors.black1,
            iconSize: 35,
            selectedFontSize: 20,
            unselectedFontSize: 20,

            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon:const Icon(Icons.home),
                label: Applocalizations.of(context)!.translatetext("Home"),
              ),
              BottomNavigationBarItem(
                icon:const Icon(Icons.medical_services),
                label: Applocalizations.of(context)!.translatetext("doctor"),
              ),
              BottomNavigationBarItem(
                icon:const Icon(Icons.watch),
                label: Applocalizations.of(context)!.translatetext("Diabest"),
              ),
              BottomNavigationBarItem(
                icon:const Icon(Icons.contact_phone_sharp),
                label: Applocalizations.of(context)!.translatetext("Contact Us"),
              ),
              BottomNavigationBarItem(
                icon:const Icon(Icons.person),
                label: Applocalizations.of(context)!.translatetext("Profile"),
              ),
            ],
          ),
          body: widgetPages[selectedIndex],
        );
        
  }
}