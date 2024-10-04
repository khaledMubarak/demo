import 'package:flutter/material.dart';
import 'package:islami_app/home_screen.dart';
import 'package:islami_app/suras_content.dart';

import 'app_themes.dart';
void main() {
  runApp(const IslamiApp());
}
class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
       HomeScreen.RouteName:(_)=> HomeScreen(),
        SurasContent.RouteName:(_)=>SurasContent(),
      } ,
      initialRoute:HomeScreen.RouteName ,
      darkTheme: AppTheme.DarkTheme,
      theme: AppTheme.LightTheme,
      themeMode:ThemeMode.light ,
    );
  }
}
