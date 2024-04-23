import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/reminder_medicins/data/add_task_component.dart';
import 'package:diabestapp/Features/reminder_medicins/data/commons/commons.dart';
import 'package:diabestapp/Features/reminder_medicins/presentation/cubit/task_cubit.dart';
import 'package:diabestapp/Features/reminder_medicins/presentation/cubit/task_state.dart';
import 'package:diabestapp/Features/reminder_medicins/presentation/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ReminderDetails extends StatelessWidget {
  const ReminderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text(
          AppStrings.addareminder,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: BlocConsumer<TaskCubit, TaskState>(
            listener: (context, state) {
              if (state is InsertTaskSucessState) {
                showToast(
                    message: 'Added Sucessfully', state: ToastStates.success);
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              final cubit = BlocProvider.of<TaskCubit>(context);
              return Form(
                key: BlocProvider.of<TaskCubit>(context).formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //! Title
                    AddReminderComponent(
                      controller:
                          BlocProvider.of<TaskCubit>(context).titleController,
                      tilte: AppStrings.tilte,
                      hintText: AppStrings.tilteHint,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return AppStrings.tilteErrorMsg;
                        }
                        return null;
                      },
                    ),
                  const  SizedBox(height: 24),
                    //! Note
                     AddReminderComponent(
                      controller:
                          BlocProvider.of<TaskCubit>(context).noteController,
                      tilte: AppStrings.reminder,
                      hintText: AppStrings.reminderhint,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return AppStrings.reminderErrorMsg;
                        }
                        return null;
                      },
                    ),
                   const SizedBox(height: 24),
                    //! Date
                     AddReminderComponent(
                      tilte: AppStrings.date,
                      hintText: DateFormat.yMd().format(cubit.currentDate),
                      suffixIcon: IconButton(
                        onPressed: () async {
                          BlocProvider.of<TaskCubit>(context).getDate(context);
                        },
                        icon:  Icon(
                          Icons.calendar_month_rounded,
                          color: AppColors.white,
                        ),
                      ),
                      readOnly: true,
                    ),
                   const SizedBox(height: 24),
                    //! Start - End Time
                    Row(
                      children: [
                        // Start
                        Expanded(
                          child:  AddReminderComponent(
                            readOnly: true,
                            tilte: AppStrings.start,
                            hintText:
                                BlocProvider.of<TaskCubit>(context).startTime,
                            suffixIcon: IconButton(
                              onPressed: () async {
                                BlocProvider.of<TaskCubit>(context)
                                    .getStartTime(context);
                              },
                              icon:  Icon(
                                Icons.timer_outlined,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 26,
                        ),
                        //! end
                        Expanded(
                          child:  AddReminderComponent(
                            readOnly: true,
                            tilte: AppStrings.end,
                            hintText:
                                BlocProvider.of<TaskCubit>(context).endTime,
                            suffixIcon: IconButton(
                              onPressed: () async {
                                BlocProvider.of<TaskCubit>(context)
                                    .getEndTime(context);
                              },
                              icon:  Icon(
                                Icons.timer_outlined,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                   const SizedBox(height: 24),

                    //!Color
                    SizedBox(
                      height: 68,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // color
                          Text(
                            AppStrings.color,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),

                          Expanded(
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              separatorBuilder: (context, index) =>
                               const   SizedBox(width: 8),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    BlocProvider.of<TaskCubit>(context)
                                        .changeCheckMarkIndex(index);
                                  },
                                  child: CircleAvatar(
                                    backgroundColor:
                                        BlocProvider.of<TaskCubit>(context)
                                            .getColor(index),
                                    child: index ==
                                            BlocProvider.of<TaskCubit>(context)
                                                .currentIndex
                                        ? const Icon(Icons.check)
                                        : null,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    //! add Task Button

                   const SizedBox(height: 90),

                    state is InsertTaskLoadingState
                        ?  Center(
                            child: CircularProgressIndicator(
                            color: AppColors.primarycolor,
                          ))
                        : SizedBox(
                            height: 48,
                            width: double.infinity,
                            child: CustomButton(
                              text: AppStrings.cerate,
                              onPressed: () {
                                if (BlocProvider.of<TaskCubit>(context)
                                    .formKey
                                    .currentState!
                                    .validate()) {
                                  BlocProvider.of<TaskCubit>(context)
                                      .insertTask();
                                }
                              },
                            ),
                          )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
