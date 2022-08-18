import 'package:flutter/material.dart';

class CignifiHomePage extends StatelessWidget {
  const CignifiHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Text(
          "cigniFi",
          style: TextStyle(
            fontSize: 85,
            fontWeight: FontWeight.w800,
            fontFamily: "Lobster",
          ),
        ),
      ),
    );
  }
}
