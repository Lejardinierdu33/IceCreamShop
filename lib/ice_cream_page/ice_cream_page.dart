import 'package:flutter/material.dart';
import 'package:ice_cream_shop/ice_cream_page/widget/categorie.dart';

class IceCreamPage extends StatelessWidget {
  const IceCreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesSection(),
          ],
        ),
      ),
    );
  }
}
