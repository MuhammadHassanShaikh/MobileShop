import 'package:flutter/material.dart';
import 'package:mobile_shop_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage(
      {super.key, required this.catalog}); // assert add nahi horaha time 5 32 1
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Image.network(catalog.image)],
      ),
    );
  }
}
