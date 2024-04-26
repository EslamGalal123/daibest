import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class CreateNewPassword extends StatelessWidget {
 

  CreateNewPassword({Key? key, }) : super(key: key);
  
TextEditingController newpassword =  TextEditingController();
TextEditingController confirmThePassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height*0.01),
            Text(
              Applocalizations.of(context)!.translatetext("Create New Password"),
              style:  Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(height: height*0.01),
            Text(Applocalizations.of(context)!.translatetext("Create your new password")),
            SizedBox(height: height*0.01),
            ClipOval(
              child: SizedBox(
                width: width*0.4,
                height: height*0.4,
                child: Image.asset(
                  Assets.imagesImageNewpassword1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // TextFormField(
            //   decoration: InputDecoration(
            //     hintText: 'Enter new password',
            //   ),
            //   obscureText: true,
            // ),
            // SizedBox(height: height*0.01),
            // TextFormField(
            //   decoration: InputDecoration(
            //     hintText: 'Confirm new password',
            //   ),
            //   obscureText: true,
            // ),
            CustomTextFormField(labelText: Applocalizations.of(context)!.translatetext("New Password"), mycontroller: newpassword),
CustomTextFormField(labelText: Applocalizations.of(context)!.translatetext("Confirm Password"), mycontroller: confirmThePassword),
            SizedBox(height: height*0.01),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {
                    // Handle checkbox state
                  },
                ),
               Text(Applocalizations.of(context)!.translatetext("Remember me")),
              ],
            ),
            SizedBox(height: height*0.04),
         CustomBtn(text: Applocalizations.of(context)!.translatetext("Continue"),onPressed: () {
           
         },)
          ],
        ),
      ),
    );
  }

  // Function to show a dialog
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:const Text(''),
          content: Image.asset(
            'assets/New Password/congrats.png',
            fit: BoxFit.cover,
          ),
          actions: [
            ElevatedButton(
              
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(primary:const Color(0xFF246BFE)),
              child: Text(Applocalizations.of(context)!.translatetext("Close"),style: TextStyle(color: Colors.white),),
            ),
          ],
        );
      },
    );
  }}