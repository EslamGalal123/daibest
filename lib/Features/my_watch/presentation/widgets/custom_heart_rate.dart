import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Features/my_watch/presentation/widgets/chart_rate.dart';
import 'package:flutter/material.dart';

class CustomHearttRate extends StatelessWidget {
  const CustomHearttRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
// ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LineChartPage(seriesList: [],)), // استبدل LineChartPage() بالصفحة التي تحتوي على الرسم البياني
//                 );
//               },
//               child:const Text('Open Chart Page'),
            // ),  
              const   SizedBox(height: 10,),
            
            const    Text("Pules-Rate",style: CustomTextStyles.lohit500style22,),
            const   SizedBox(height: 10,),
            LineChartWidget(),
                Row(
                  children: [
               const     Text("Heart Beats :  ",style: CustomTextStyles.lohit500style20,),
              //  SizedBox(width: ,)
Container(
  width: 80,
  height: 25,
  decoration: BoxDecoration(border: Border.all(style: BorderStyle.solid)),
)
                  ],
                ),

      ],
    );
  }
  
}
