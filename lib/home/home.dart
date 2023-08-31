import 'package:flutter/material.dart';
import 'package:ice_cream_shop/home/widget/card.dart';
import 'package:ice_cream_shop/home/widget/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Définissez la couleur de fond noire
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(50),
              origin: Offset(150, -250),
              child: Image.asset(
                'assets/images/pink_liquid2.png',
                width: 550,
              ),
            ),
            Positioned(
              right: 300,
              top: 400,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(50),
                origin: Offset(150, -250),
                child: Image.asset(
                  'assets/images/pink_liquid2.png',
                  width: 550,
                ),
              ),
            ),
            Positioned(
              right: -150,
              top: 1000,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(50),
                origin: Offset(150, -250),
                child: Image.asset(
                  'assets/images/pink_liquid2.png',
                  width: 550,
                ),
              ),
            ),
            Column(
              children: [
                const HeaderSection(),
                CardSection(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
