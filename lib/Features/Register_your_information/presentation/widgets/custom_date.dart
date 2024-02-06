import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:flutter/material.dart';

class DateButton extends StatefulWidget {
  @override
  _DateButtonState createState() => _DateButtonState();
}
class _DateButtonState extends State<DateButton> {
  late DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1960),
      lastDate: DateTime(2030),
    ))!;
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const  Text(
                      AppStrings.date,
                      style:CustomTextStyles.lohit500style20,
                          
                    ),
                Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: () => _selectDate(context),
                  child: Text(' ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',style: Theme.of(context).textTheme.bodySmall,),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: AppColors.black1,
                    ),
                  ),
                ),
              ],
            )
        ;
  }
}
