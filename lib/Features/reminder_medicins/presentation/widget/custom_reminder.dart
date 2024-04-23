
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/reminder_medicins/data/model/task_model.dart';
import 'package:diabestapp/Features/reminder_medicins/presentation/cubit/task_cubit.dart';
import 'package:diabestapp/Features/reminder_medicins/presentation/cubit/task_state.dart';
import 'package:diabestapp/Features/reminder_medicins/presentation/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CustomReminderMedicinForm extends StatelessWidget {
  const CustomReminderMedicinForm({super.key});

  @override
  Widget build(BuildContext context) {

return Padding(
          padding: const EdgeInsets.all(24.0),
          child: BlocBuilder<TaskCubit, TaskState>(
            builder: (context, state) {
              return ListView(
                shrinkWrap: true,
                
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //date now
                  Row(
                    children: [
                      Text(DateFormat.yMMMMd().format(DateTime.now()),
                          style: Theme.of(context).textTheme.titleMedium),
                      const Spacer(),
                      // IconButton(
                      //   onPressed: () {
                      //     BlocProvider.of<TaskCubit>(context).changeTheme();
                      //   },
                      //   icon: Icon(
                      //     Icons.mode_night,
                      //     color: BlocProvider.of<TaskCubit>(context).isDark
                      //         ? AppColors.white
                      //         : AppColors.grey,
                      //   ),
                      // )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //Today
                  Text(AppStrings.today,
                      style: Theme.of(context).textTheme.bodyMedium),
                  //date picker
                  DatePicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: AppColors.primarycolor,
                    selectedTextColor: AppColors.white,
                    dateTextStyle: 
                     TextStyle(
                fontSize:  12,
                fontWeight: FontWeight.w400,
                fontFamily: "poppins",
                color: AppColors.primarycolor),
                    dayTextStyle: 
                     TextStyle(
                fontSize:  12,
                fontWeight: FontWeight.w500,
                fontFamily: "poppins",
                color: AppColors.primarycolor),
                    monthTextStyle: 
                    
                     TextStyle(
                fontSize:  12,
                fontWeight: FontWeight.w500,
                fontFamily: "poppins",
                color: AppColors.primarycolor),
                    onDateChange: (date) {
                      BlocProvider.of<TaskCubit>(context).getSelectedDate(date);
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  //no tasks
                  BlocProvider.of<TaskCubit>(context).tasksList.isEmpty
                      ? noTasksWidget(context)
                      : Expanded(
                          child: ListView.builder(
                            itemCount: BlocProvider.of<TaskCubit>(context)
                                .tasksList
                                .length,
                            itemBuilder: (context, index) {
                              return TaskComponent(
                                taskModel: BlocProvider.of<TaskCubit>(context)
                                    .tasksList[index],
                              );
                            },
                          ),
                        ),
                ],
              );
            },
          ),
        );
  }

  Column noTasksWidget(BuildContext context) {
    return Column(
      children: [
        Image.asset(Assets.noTasks),
        Text(
          AppStrings.noTaskTitle,
          style: Theme.of(context).textTheme.bodyMedium
        ),
        Text(
          AppStrings.noTaskSubTitle,
          style:  Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}

class TaskComponent extends StatelessWidget {
  const TaskComponent({
    super.key,
    required this.taskModel,
  });
  final ReminderModel taskModel;
  Color getColor(index) {
    switch (index) {
      case 0:
        return AppColors.red;
      case 1:
        return AppColors.green;
      case 2:
        return AppColors.blueGrey;
      case 3:
        return AppColors.blue;
      case 4:
        return AppColors.orange;
      case 5:
        return AppColors.purple;
      default:
        return AppColors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: const EdgeInsets.all(24),
              height: 240,
              color: AppColors.deebGrey,
              child: Column(
                children: [
                  //taskCompleted
                  taskModel.isCompleted == 1
                      ? Container()
                      : SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: CustomButton(
                            text: AppStrings.taskCompleted,
                            onPressed: () {
                              BlocProvider.of<TaskCubit>(context)
                                  .updateTask(taskModel.id);
                              Navigator.pop(context);
                            },
                          ),
                        ),
                  const SizedBox(
                    height: 24,
                  ),

                  //deleteTask
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: CustomButton(
                      text: AppStrings.delete,
                      backgroundColor: AppColors.red,
                      onPressed: () {
                        BlocProvider.of<TaskCubit>(context)
                            .deleteTask(taskModel.id);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  //cancel
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: CustomButton(
                      text: AppStrings.cancel,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
      child: Container(
        height: 132,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: getColor(taskModel.color),
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.only(bottom: 16),
        child: Row(
          children: [
            //column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //title
                  Text(
                    taskModel.title,
                    style:  Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),

                  //row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     Icon(
                        Icons.timer,
                        color: AppColors.white,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${taskModel.startTime} - ${taskModel.endTime}',
                        style:  Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  //note
                  Text(
                    taskModel.note,
                    style:  Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),

            //divider
            Container(
              height: 75,
              width: 1,
              color: Colors.white,
              margin: const EdgeInsets.only(right: 10),
            ),
            // const SizedBox(width: 10,),
            //text
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                taskModel.isCompleted == 1
                    ? AppStrings.completed
                    : AppStrings.reminder,
                style:  Theme.of(context).textTheme.titleMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//     return Column(
//       children: [
//         Row(
//           children: [
//             Image.asset(Assets.remindermedicin,width: 100,),
//             Text("Medicine",style:CustomTextStyles.lohit500style24deed ,)
//           ],
//         ),
//         Row(
//           children: [
//             Image.asset(Assets.start,width: 50,),
//             Text("Please Enter Medicine Name",style:Theme.of(context).textTheme.bodyMedium ,)
//           ],
//         ),
//         Container(
//           height: MediaQuery.of(context).size.height * 0.20,
//           width: MediaQuery.of(context).size.width * 0.80,
//           padding:const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child:const Text(""),
//         ),
//          Row(
//           children: [
//             Image.asset(Assets.start,width: 50,),
//             Text("What is this medicine used for?",style:Theme.of(context).textTheme.bodyMedium ,)
//           ],
//         ),
//         Container(
//           height: MediaQuery.of(context).size.height * 0.20,
//           width: MediaQuery.of(context).size.width * 0.80,
//           padding:const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child:const Text(""),
//         ),
//          Row(
//           children: [
//             Image.asset(Assets.start,width: 50,),
//             Text("How often do you take this \nmedicine?", style:Theme.of(context).textTheme.bodyMedium , maxLines: 2)
//           ],
//         ),
//         Container(
//           height: MediaQuery.of(context).size.height * 0.20,
//           width: MediaQuery.of(context).size.width * 0.80,
//           padding:const EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey),
//             borderRadius: BorderRadius.circular(8),
//           ),
//           child:const Text(""),
//         ),
//       ],
//     );
//   }
// }