import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Features/Eating/presentation/view/details_page.dart';
import 'package:diabestapp/Features/Eating/presentation/widget/meal_section_card.dart';
import 'package:flutter/material.dart';

class CustomMealSectionForm extends StatelessWidget {
  const CustomMealSectionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          MealSectionCard(
            title: 'Breakfast',
            icon: Icons.fastfood,
            items: const ['Bread', 'Egg', 'Cheese', 'Milk'],
            image: Assets.breakfast,
            onTap: () => _openDetailsPage(context, 'Breakfast Details'),
          ),
          MealSectionCard(
            title: 'Lunch',
            icon: Icons.local_dining,
            items:const ['Rice', 'Meat', 'Fish', 'Chicken'],
            image: Assets.lunch,
            onTap: () => _openDetailsPage(context, 'Lunch Details'),
          ),
          MealSectionCard(
            title: 'Dinner',
            icon: Icons.dinner_dining,
            items: const['Yogurt', 'Fruits', 'Dates'],
            image: Assets.dinner, // صورة العشاء
            onTap: () => _openDetailsPage(context, 'Dinner Details'),
          ),
          MealSectionCard(
            title: 'Bad Eating Habits You Can Break for Good',
            icon: Icons.fastfood,
            items:const ['Chips', 'Nuts', 'Chocolate'],
            image: Assets.healthyMovieSnacks, // صورة الوجبة الخفيفة
            onTap: () => _openDetailsPage(context, 'Snack Details'),
          ),
          MealSectionCard(
            title: 'Healthy Movie Snacks',
            icon: Icons.cake,
            items:const ['Cake', 'Ice Cream', 'Cookies'],
            image: Assets.badEatingHabitsYouCanBreakfor,
            onTap: () => _openDetailsPage(context, 'Dessert Details'),
          ),
          MealSectionCard(
            title: 'How to Eat Healthy and Avoid Fad Diets',
            icon: Icons.local_cafe,
            items:const ['Coffee', 'Tea', 'Juice'],
            image: Assets.badEatingHabitsYouCanBreakforGood,
            onTap: () => _openDetailsPage(context, 'Drinks Details'),
          ),
        ],
      );
    
  }
  void _openDetailsPage(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPageView(title: title),
      ),
    );
  }
}