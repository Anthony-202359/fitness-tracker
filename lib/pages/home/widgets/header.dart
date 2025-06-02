import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Stack(
        children: [
          // Background container
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 54, 209, 57), // Green color
            ),
          ),

          // Menu icon
          Positioned(
            top: 16,
            left: 16,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.white),
            ),
          ),

          // Profile image
          Positioned(
            top: 16,
            right: 16,
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/images/my_profile.jpg'),
            ),
          ),

          // Greeting Text
          Positioned(
            left: 16,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hello,',
                  style: TextStyle(color: Color.fromARGB(255, 247, 249, 246), fontSize: 20),
                ),
                Text(
                  'Anthony',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint backColor = Paint()
      ..color = const Color.fromARGB(255, 54, 209, 60);

    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, backColor);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
