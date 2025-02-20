import 'package:flutter/material.dart';

class noSearchwid extends StatelessWidget {
  const noSearchwid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "images/Search icon sign symbol design.jpg",
          height: 200,
          width: 200,
        ),
      ],
    ));
  }
}
