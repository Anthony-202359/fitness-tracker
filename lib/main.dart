import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vscode_health_pp/pages/details/details.dart';
import 'package:vscode_health_pp/pages/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY POCKET DOCTOR',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/details': (context) => const DetailsPage(),
      },
      initialRoute: '/details',
    );
  }
}
