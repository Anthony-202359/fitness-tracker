import 'package:flutter/material.dart';
import 'package:vscode_health_pp/pages/details/widgets/dates.dart';
import 'package:vscode_health_pp/pages/details/widgets/graph.dart';
import 'package:vscode_health_pp/pages/details/widgets/info.dart';
import 'package:vscode_health_pp/pages/details/widgets/stats.dart';
import 'package:vscode_health_pp/pages/details/widgets/steps.dart';
import 'package:vscode_health_pp/widgets/bottom_navigation.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});


  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Activity'),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
            size: 25,
          ),
          color: const Color.fromARGB(255, 243, 33, 33),
          onPressed: () {
          },
        ),
      ],
    ),
    body: Column(
      children: [
        Dates(),
        Steps(),
        Graph(),
        Info(),
        Stats(),
        BottomNavigation()
      ]
    ),
  );
}

}