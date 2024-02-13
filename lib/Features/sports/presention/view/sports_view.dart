import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:flutter/material.dart';

class WorkoutPlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Workout Plan',style: CustomTextStyles.lohit500style20,),
      ),
      body: ListView(
        children: [
         const Padding(
            padding:  EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
        const  CardItem(imagePath: Assets.hitt, title: 'Hllt'),
         const CardItem(imagePath: Assets.yoga, title: 'Yoga'),
         const CardItem(imagePath: Assets.pilates, title: 'Pilates'),
         const CardItem(imagePath: Assets.bands, title: 'BANDS'),
         const CardItem(imagePath: Assets.meditation, title: 'Meditation'),
          AfterCardsContent(),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const CardItem({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {
          // Handle card press
        },
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 320, 
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style:const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AfterCardsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
     const   Padding(
          padding:  EdgeInsets.all(16.0),
          child: Text(
            'Most Popular',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
        ), 
        ListTile(
          title: Text("Walking"),
          leading: Image.asset("Assets/Images/walking.png"),
          trailing:Image.asset("Assets/Images/right.png"), 
          onTap: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen()),
            );
          },
        ),

        ListTile(
          title: Text("Running"),
          leading: Image.asset("Assets/Images/running.png"),
          trailing:Image.asset("Assets/Images/right.png"), 
          onTap: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen()),
            );
          },
        ),

        ListTile(
          title: Text("Biking"),
          leading: Image.asset("Assets/Images/biking.png"),
          trailing:Image.asset("Assets/Images/right.png"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen()),
            );
          }, 
        ),
         ],
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Detail Screen'),
      ),
      body:const Center(
        child: Text('This is the detail screen.'),
      ),
    );
  }
}