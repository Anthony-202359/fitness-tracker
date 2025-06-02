// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CurrentPrograms extends StatelessWidget {
  const CurrentPrograms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: const [
              Expanded(
                child: Text(
                  'Current Programs',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
        SizedBox(
          height: 114, // Increased height for better layout
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: const [
              ProgramCard(
                title: 'Cardio',
                kcal: '220kcal',
                duration: '20min',
                imagePath: 'assets/images/body.jpeg',
              ),
              SizedBox(width: 12),
              ProgramCard(
                title: 'Barbel Arm Lift',
                kcal: '220kcal',
                duration: '20min',
                imagePath: 'assets/images/run.jpeg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProgramCard extends StatelessWidget {
  final String title;
  final String kcal;
  final String duration;
  final String imagePath;

  const ProgramCard({
    super.key,
    required this.title,
    required this.kcal,
    required this.duration,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.darken,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  kcal,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  duration,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
