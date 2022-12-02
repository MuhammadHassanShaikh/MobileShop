import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../theme.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Online Mobile Shop".text.xl5.bold.color(MyTheme.darkbluish).make(),
        "Trending Mobiles".text.xl2.make(),
      ],
    );
  }
}
