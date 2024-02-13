import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:flutter/material.dart';

class DetailsPageView extends StatelessWidget {
 const  DetailsPageView({required this.title});
 final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        title: Text(title,style: CustomTextStyles.lohit500style20,),
      ),
      body: Center(
        child: Text('Details for $title'),
      ),
    );
  }
}