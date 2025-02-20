// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/Search.dart';
import 'package:weather_app/widgets/noSerchWid.dart';
import 'package:weather_app/widgets/result.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Search(),
                  ),
                );
              },
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ))
        ],
        title: Text("Weather App",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Color(0xfffdae3e),
      ),
      body: w == null ? noSearchwid() : resultWid(),
    );
  }
}
