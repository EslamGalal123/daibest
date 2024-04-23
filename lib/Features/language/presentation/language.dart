import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Localizations/applocalizations.dart';
import 'package:diabestapp/Localizations/logic/bloc/applanguage_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(Applocalizations.of(context)!.translatetext("home_page")),
          ElevatedButton(onPressed: () {
            BlocProvider.of<ApplanguageBloc>(context).add(ArabicLanguageEvent());
            customNavigate(context, '/OnBoarding');
          }, child: Text("اللغه العربية ")),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(onPressed: () {
                        BlocProvider.of<ApplanguageBloc>(context).add(EnglishLanguageEvent());
            customNavigate(context, '/OnBoarding');

          }, child: Text("English"))
        ]),
      ),
    );
  }
}
