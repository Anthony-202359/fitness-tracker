import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: double.infinity,
          height: 200,
          color: const Color.fromARGB(255, 73, 216, 34),
      ),
    );
  }
}
