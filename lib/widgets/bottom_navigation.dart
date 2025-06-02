import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: const Color.fromARGB(255, 95, 205, 85),
      child: IconTheme(
        data: const IconThemeData(color: Color.fromARGB(255, 160, 160, 180)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.add_chart),
            const Icon(Icons.search),

            // Home icon with navigation
            Transform.translate(
              offset: const Offset(0, -10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Color(0xff92e2ff),
                        Color.fromARGB(255, 101, 154, 245),
                      ],
                    ),
                  ),
                  child: const Icon(Icons.home, color: Colors.white),
                ),
              ),
            ),

            const Icon(Icons.date_range),

            // Settings icon with navigation
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/details');
              },
              child: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
