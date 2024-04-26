import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';

TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(Applocalizations.of(context)!.translatetext("changepassword")),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              buildPasswordField(
                label: Applocalizations.of(context)!.translatetext("currentpassword"),
                controller: currentPasswordController,
              ),
              buildPasswordField(
                label:Applocalizations.of(context)!.translatetext("newpassword"),
                controller: newPasswordController,
              ),
              buildPasswordField(
                label: Applocalizations.of(context)!.translatetext("confirmThePassword"),
                controller: confirmPasswordController,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              
              onPressed: () {
                // Handle change password logic
                Navigator.pop(context); // Close the dialog
              },
              child:Text(Applocalizations.of(context)!.translatetext("changepassword"),style:const TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text(Applocalizations.of(context)!.translatetext("cancel"),style:const TextStyle(fontSize: 16),),
            ),
          ],
        );
      },
    );
  }

  Widget buildPasswordField({
    required String label,
    required TextEditingController controller,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: true,
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border:const OutlineInputBorder(),
        ),
      ),
    );
  }