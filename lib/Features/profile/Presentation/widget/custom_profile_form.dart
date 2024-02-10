import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:flutter/material.dart';

class CustomProfileForm extends StatelessWidget {
  const CustomProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
           
              Text("Weight: 85",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
              const SizedBox(height: 15,),
               Text("Height: 185",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
           
         
         const SizedBox(height: 15,),
               Text("Gender: Male",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
              const SizedBox(height: 15,),
             Text("Status: Single",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
           const SizedBox(height: 15,),
          
             
                 
                  Text("Age: 22",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
                  const SizedBox(height: 15,),
                  Text("Blood Suger Level: Type1",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
               
               
            ],
          

        
      );
    
  }
}