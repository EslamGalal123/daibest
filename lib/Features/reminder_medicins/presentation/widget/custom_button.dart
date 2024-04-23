import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed,this.backgroundColor=AppColors.primary});
  final String text;
  final VoidCallback onPressed;
 final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 37, 30, 87),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4))),
      child: Text(
        text,
      ),
    );
  }
}
