import 'package:flutter/material.dart';
import 'package:weather_app/screens/Home.dart';
import 'package:weather_app/screens/NoSearch.dart';
import 'package:weather_app/screens/Search.dart';
import 'package:weather_app/screens/result.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return Home();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
            height: 300,
            width: 200,
            "images/Free Vector _ Tweetstorm concept illustration.jpg"),
      ),
    );
  }
}
