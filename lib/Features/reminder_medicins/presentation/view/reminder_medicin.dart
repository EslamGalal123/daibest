import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/reminder_medicins/presentation/widget/custom_reminder.dart';
import 'package:flutter/material.dart';

class ReminderMedicinsView extends StatelessWidget {
  const ReminderMedicinsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          customNavigate(context, "/ReminderDetails");
        },
        backgroundColor: AppColors.primarycolor,
        child:const Icon (Icons.add),
        ),
     body:
    // ScreenUtilInit(
    //   designSize: const Size(375, 812),
    //   builder: (context, child) {
    //     return BlocBuilder<TaskCubit, TaskState>(
    //       builder: (context, state) {
    //         return 
      const SafeArea(
        child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomScrollView(
                  physics:  BouncingScrollPhysics(),
                  slivers: [
                     SliverToBoxAdapter(
                        child:CustomReminderMedicinForm()
                   ),])))
                    
   
    );
  }
}