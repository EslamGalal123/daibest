import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Features/doctors_patient/Presentation/widget/card_doctor_patient.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class CustomPatientDoctorForm extends StatefulWidget {
  const CustomPatientDoctorForm({super.key});

  @override
  State<CustomPatientDoctorForm> createState() => _CustomPatientDoctorFormState();
}

class _CustomPatientDoctorFormState extends State<CustomPatientDoctorForm> {
  static String searchQuery = '';
    List<Map<String, dynamic>> getFilteredItems() {

   return [
      {'title': 'Internist', 'value': 'Internist',},
      {'title': 'Cardiologist', 'value':'Cardiologist', },
      {'title': 'Dermatology', 'value':'Dermatology', },
      {'title': 'Hepatologist', 'value': 'Hepatologist', },
    ].where((item) {
      final specialtyName = item['title'] as String;
      return specialtyName.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Assets.imagesImageDoctor),
           Padding(
            padding:const EdgeInsets.all(8.0),
            child: Text( Applocalizations.of(context)!.translatetext("doctor"),
                style: CustomTextStyles.lohit500style22),
          ),
        ],
      ),
      Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          decoration: InputDecoration(
            hintText:  Applocalizations.of(context)!.translatetext("Search"), prefixIcon:const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            ),
            contentPadding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10), 
          ),
          onChanged: (value) {
            setState(() {
              searchQuery = value;
            });
          },
        ),
      ),
      const SizedBox(height: 5,),
      CardPatientDoctor(
          doctorName: AppStrings.eslamgalal,
          doctorImage: Assets.imagesImageInternist,
          specialtyName: AppStrings.internist),
      CardPatientDoctor(
          doctorName: "Marwan Amer",
          doctorImage: Assets.imagesImageCardiologist,
          specialtyName: AppStrings.cardiologist),
      CardPatientDoctor(
          doctorName: "Romisaa Elsayed",
          doctorImage: Assets.imagesImageDermatolo,
          specialtyName: AppStrings.dermatology),
      CardPatientDoctor(
          doctorName: "Mohamrd Abdelaziz",
          doctorImage: Assets.imagesHepatologist,
          specialtyName: AppStrings.hepatologist),
      CardPatientDoctor(
          doctorName: AppStrings.eslamgalal,
          doctorImage: Assets.imagesImageInternist,
          specialtyName: AppStrings.internist),
      CardPatientDoctor(
          doctorName: "Marwan Amer",
          doctorImage: Assets.imagesImageCardiologist,
          specialtyName: AppStrings.cardiologist),
      CardPatientDoctor(
          doctorName: "Mohamrd Abdelaziz",
          doctorImage: Assets.imagesHepatologist,
          specialtyName: AppStrings.hepatologist),
    ]);
  }
}

