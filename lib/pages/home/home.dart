import 'package:flutter/material.dart';
import 'package:vscode_health_pp/pages/home/widgets/activity.dart';
import 'package:vscode_health_pp/pages/home/widgets/header.dart';
import 'package:vscode_health_pp/pages/home/widgets/current.dart';
import 'package:vscode_health_pp/widgets/bottom_navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  get items => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppHeader(),
          CurrentPrograms(),
          RecentActivities(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
