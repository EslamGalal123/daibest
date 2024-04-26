import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class CustomProfileForm extends StatelessWidget {
  const CustomProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
           
              Text("${Applocalizations.of(context)!.translatetext("weight")}"  "${"   85"}",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
              const SizedBox(height: 15,),
               Text("${Applocalizations.of(context)!.translatetext("height")}"  "${"   185"}",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
           
         
         const SizedBox(height: 15,),
               Text("${Applocalizations.of(context)!.translatetext("gender")}"  "${"    male"}",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
              const SizedBox(height: 15,),
             Text("${Applocalizations.of(context)!.translatetext("maritalStatus")}"  "${"    single"}",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
           const SizedBox(height: 15,),
          
             
                 
                  Text("${Applocalizations.of(context)!.translatetext("age")}"  "${"   22"}",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
                  const SizedBox(height: 15,),
                  Text("${Applocalizations.of(context)!.translatetext("Blood Suger Type :      ")}"  "${"   type1"}",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
               
               
            ],
          

        
      );
    
  }
}