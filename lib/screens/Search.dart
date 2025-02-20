// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Service/weatherService.dart';
import 'package:weather_app/models/weather_model.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xfffdae3e),
        title: Text(
          "Search City",
          style: TextStyle(fontSize: 28),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: TextField(
              onSubmitted: (value) async {
                w = await service(Dio()).getweather(city: value);
                Navigator.pop(context);
              },
              enabled: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(25),
                labelText: "Search",
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                suffixIcon: Icon(Icons.search),
                hintText: "Enter City Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Color(0xfffdae3e),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Color(0xfffdae3e))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

weather_model? w;
