import 'package:flutter/material.dart';
import 'package:ice_cream_shop/models/ice_cream.dart';


class DetailIceCream extends StatelessWidget {
  const DetailIceCream(this.cesarean, {super.key});

  final IceCream cesarean;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(cesarean.name),
      ),
    );
  }
}