import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int day = 30;
  final String name = "Hassan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Mobile Shop"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $day of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
