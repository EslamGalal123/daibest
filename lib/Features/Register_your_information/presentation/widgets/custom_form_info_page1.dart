import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/information_adresses.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class CustomFormInfoPage1 extends StatefulWidget {
  const CustomFormInfoPage1({super.key});

  @override
  State<CustomFormInfoPage1> createState() => _CustomFormInfoPage1State();
}

class _CustomFormInfoPage1State extends State<CustomFormInfoPage1> {
  String? gender;
  String? diabeticcama;
  String? doyousmoke;
  String? familyhavediabetes;
  String?oral;
  String?breastfeeding;
  String?pregnant;
  String? presuremedications;
  String? takemedications;
  String? drinkachol;
  String?pancreasdisease;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InformationAdresses(text: Applocalizations.of(context)!.translatetext("gender")),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value:'male',
                groupValue: gender,
                onChanged: (val) {
                  setState(() {
                    gender = val;
                  });
                }),
            // const Icon(
            //   Icons.man,
            //   size: 50,
            // ),
            Image.asset(Assets.imagesImageOpenmojiMan),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'female',
                groupValue: gender,
                onChanged: (val) {
                  setState(() {
                    gender = val;
                  });
                }),
             Image.asset(Assets.imagesImageOpenmojiWoman)
          ],
        ),
     

        InformationAdresses(text:Applocalizations.of(context)!.translatetext("doyousufferfromdiabeticcoma")),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: diabeticcama,
                onChanged: (val) {
                  setState(() {
                    diabeticcama = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("yes"),style: CustomTextStyles.lohit400style18,),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: diabeticcama,
                onChanged: (val) {
                  setState(() {
                    diabeticcama = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("no"),style: CustomTextStyles.lohit400style18,),
            ),
            
          ],
        ),
        InformationAdresses(text: Applocalizations.of(context)!.translatetext("doyousmoke")),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: doyousmoke,
                onChanged: (val) {
                  setState(() {
                    doyousmoke = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("yes"),style: CustomTextStyles.lohit400style18,),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: doyousmoke,
                onChanged: (val) {
                  setState(() {
                    doyousmoke = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("no"),style: CustomTextStyles.lohit400style18,),
            ),
            
          ],
        ),
        InformationAdresses(text:Applocalizations.of(context)!.translatetext("doesanyoneinyourfamilyhavediabetes")),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: familyhavediabetes,
                onChanged: (val) {
                  setState(() {
                    familyhavediabetes = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("yes"),style: CustomTextStyles.lohit400style18,),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: familyhavediabetes,
                onChanged: (val) {
                  setState(() {
                    familyhavediabetes = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("no"),style: CustomTextStyles.lohit400style18,),
            ),
            
          ],
        ),
 InformationAdresses(text: Applocalizations.of(context)!.translatetext("doyouusebloodpresuremedications")),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: presuremedications,
                onChanged: (val) {
                  setState(() {
                    presuremedications = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
               Applocalizations.of(context)!.translatetext("yes"),
                style: CustomTextStyles.lohit400style18,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: presuremedications,
                onChanged: (val) {
                  setState(() {
                    presuremedications = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                Applocalizations.of(context)!.translatetext("no"),
                style: CustomTextStyles.lohit400style18,
              ),
            ),
          ],
        ),
        InformationAdresses(text: Applocalizations.of(context)!.translatetext("doyoutakemedicationforatheroscleriosisoranyheartdisease")),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: takemedications,
                onChanged: (val) {
                  setState(() {
                    takemedications = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("yes"),style: CustomTextStyles.lohit400style18,),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: takemedications,
                onChanged: (val) {
                  setState(() {
                    takemedications = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("no"),style: CustomTextStyles.lohit400style18,),
            ),
            
          ],
        ),
        InformationAdresses(text: Applocalizations.of(context)!.translatetext("doyoudrinkalcholetc")),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: drinkachol,
                onChanged: (val) {
                  setState(() {
                    drinkachol = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("yes"),style: CustomTextStyles.lohit400style18,),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: drinkachol,
                onChanged: (val) {
                  setState(() {
                    drinkachol= val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("no"),style: CustomTextStyles.lohit400style18,),
            ),
            
          ],
        ),
        InformationAdresses(text: Applocalizations.of(context)!.translatetext("doyouhavemedicationforanyhepaticdisease")),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: pancreasdisease,
                onChanged: (val) {
                  setState(() {
                    pancreasdisease = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("yes"),style: CustomTextStyles.lohit400style18,),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: pancreasdisease,
                onChanged: (val) {
                  setState(() {
                    pancreasdisease = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("no"),style: CustomTextStyles.lohit400style18,),
            ),
            
          ],
        ),





        const  SizedBox(height: 10,),
        if(gender=='female')
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Row(
          children: [
            // Icon(Icons.woman_2_outlined,size: 40,color: AppColors.black2,),
            Image.asset(Assets.imagesImageOpenmojiWoman),
            Text(Applocalizations.of(context)!.translatetext("forfemale"),style: CustomTextStyles.lohit500style24.copyWith(color: AppColors.black2),)
          ],
        ),
        InformationAdresses(text:Applocalizations.of(context)!.translatetext("doyouhaveoralcontraceptives")),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: oral,
                onChanged: (val) {
                  setState(() {
                    oral = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("yes"),style: CustomTextStyles.lohit400style18,),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: oral,
                onChanged: (val) {
                  setState(() {
                    oral = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("no"),style: CustomTextStyles.lohit400style18,),
            ),
            
          ],
        ),
        InformationAdresses(text: Applocalizations.of(context)!.translatetext("areyoupregnant")),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: pregnant,
                onChanged: (val) {
                  setState(() {
                   pregnant = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("yes"),style: CustomTextStyles.lohit400style18,),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: pregnant,
                onChanged: (val) {
                  setState(() {
                    pregnant = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("no"),style: CustomTextStyles.lohit400style18,),
            ),
            
          ],
        ),
        InformationAdresses(text: Applocalizations.of(context)!.translatetext("areyoubreastfeeding")),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: breastfeeding,
                onChanged: (val) {
                  setState(() {
                   breastfeeding = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("yes"),style: CustomTextStyles.lohit400style18,),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: breastfeeding,
                onChanged: (val) {
                  setState(() {
                    breastfeeding = val;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child:   Text(Applocalizations.of(context)!.translatetext("no"),style: CustomTextStyles.lohit400style18,),
            ),
            
          ],
        )
],
        ),
        
      ],
    );
  }
}
