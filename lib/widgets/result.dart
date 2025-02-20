import 'package:flutter/material.dart';

class resultWid extends StatelessWidget {
  const resultWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Sohag",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
          Text("Updated at :    12 : 30"),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Image.asset(
                      "images/Search icon sign symbol design.jpg",
                      height: 100,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Center(
                child: Text(
                  "17",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      "MinTemp : 20",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      "MaxTemp : 20",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Light Rain",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ],
      ),
    );
  }
}
