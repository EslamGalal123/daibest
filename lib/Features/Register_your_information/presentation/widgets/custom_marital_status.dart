import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class CustomMaritalState extends StatefulWidget {
  const CustomMaritalState({super.key});

  @override
  State<CustomMaritalState> createState() => _CustomMaritalStateState();
}

class _CustomMaritalStateState extends State<CustomMaritalState> {
    String maritalStatus = 'Single';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          Applocalizations.of(context)!.translatetext("maritalStatus"),
          style:CustomTextStyles.lohit500style20,
              
        ),
        DropdownButton<String>(
          value: maritalStatus,
          onChanged: (String? newValue) {
            setState(() {
              maritalStatus = newValue!;
            });
          },
          items: <String>[
            AppStrings.single,
            AppStrings.married,
            AppStrings.divorced,
            AppStrings.widowed
          //  Applocalizations.of(context)!.translatetext("single"),
          //  Applocalizations.of(context)!.translatetext("married"),
          //  Applocalizations.of(context)!.translatetext("divorced"),
          //  Applocalizations.of(context)!.translatetext("widowed"),
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,
              style: Theme.of(context).textTheme.bodySmall),
            );
          }).toList(),
        ),
      ],
    );
  }
}