import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

class CustomHeightWeight extends StatelessWidget {
  const CustomHeightWeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Applocalizations.of(context)!.translatetext("weight"),
                    style: CustomTextStyles.lohit500style20),
                  buildProfileField(
                    label: '',
                    hint: Applocalizations.of(context)!.translatetext("enteryour"),
                    prefixIcon: Icons.fitness_center,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Applocalizations.of(context)!.translatetext("height"),
                    style: CustomTextStyles.lohit500style20,
                        
                  ),
                  buildProfileField(
                    label: '',
                    hint: Applocalizations.of(context)!.translatetext("enteryour"),
                    prefixIcon: Icons.height,
                  ),
                ],
              ),
            ),
          ],
        );
  }
    Widget buildProfileField({
    required String label,
    required String hint,
    IconData? prefixIcon,
    bool obscureText = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                if (prefixIcon != null) Icon(prefixIcon),
                const SizedBox(width: 16.0),
                Expanded(
                  child: TextFormField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      labelText: label,
                      hintText: hint,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}