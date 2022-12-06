import 'package:advanced_app/presentation/presentation_managers/routes_manager.dart';
import 'package:advanced_app/presentation/presentation_managers/theme_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: getApplicationTheme(),
      onGenerateRoute: RoutesGenerator.getRoutes,
      initialRoute: Routes.splashRoute,
    );
  }
}
