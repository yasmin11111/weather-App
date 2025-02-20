import 'package:flutter/material.dart';
import 'package:weather_app/screens/splash_screen.dart';

void main(List<String> args) {
  runApp(weather_app());
}

class weather_app extends StatefulWidget {
  const weather_app({super.key});

  @override
  State<weather_app> createState() => _weather_appState();
}

class _weather_appState extends State<weather_app> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          MaterialApp(debugShowCheckedModeBanner: false,
           home: splash_screen()),
    );
  }
}
