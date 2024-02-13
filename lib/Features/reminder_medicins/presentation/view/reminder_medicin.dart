import 'package:diabestapp/Features/reminder_medicins/presentation/widget/custom_reminder.dart';
import 'package:flutter/material.dart';

class ReminderMedicinsView extends StatelessWidget {
  const ReminderMedicinsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomScrollView(
                  physics:  BouncingScrollPhysics(),
                  slivers: [
                     SliverToBoxAdapter(
                        child:CustomReminderMedicinForm()
                    ),]))));
  }
}