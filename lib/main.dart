import 'package:azkary_app/features//splash/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(const AzkarApp());
}
class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
